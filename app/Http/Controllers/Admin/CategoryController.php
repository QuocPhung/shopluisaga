<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = Category::with('parent')->get();
        return view('admin.categories.index', compact('categories'));

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::all();
        $parents = Category::whereNull('parent_id')->get();
        return view('admin.categories.create', compact('parents', 'categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate(['name' => 'required']);
        Category::create([
            'name' => $request->name,
            'slug' => \Str::slug($request->name),
            'status' => $request->status ?? 1,
            'parent_id' => $request->parent_id,
        ]);
        return redirect()->route('admin.categories.index')->with('success', 'Thêm danh mục thành công');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Category $category)
    {
        $categories = Category::where('id', '!=', $category->id)->get();
        return view('admin.categories.edit', compact('category', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Category $category)
    {
        $request->validate(['name' => 'required']);
    
        $newStatus = $request->status ?? 1;
    
        // Nếu muốn bật mà cha đang tắt → chặn lại
        if ($newStatus == 1 && $request->parent_id) {
            $parent = Category::find($request->parent_id);
            if ($parent && $parent->status == 0) {
                return back()->with('error', 'Không thể bật danh mục khi danh mục cha đang bị ẩn.');
            }
        }
    
        // Cập nhật danh mục
        $category->update([
            'name' => $request->name,
            'slug' => \Str::slug($request->name),
            'status' => $newStatus,
            'parent_id' => $request->parent_id,
        ]);
    
        // Nếu bị ẩn thì ẩn tất cả con cháu
        if ($newStatus == 0) {
            $this->deactivateChildren($category);
        }
    
        return redirect()->route('admin.categories.index')->with('success', 'Cập nhật thành công');
    }
    
    
    // Hàm riêng để ẩn đệ quy con cháu
    private function deactivateChildren(Category $category)
    {
        foreach ($category->children as $child) {
            $child->update(['status' => 0]);
            $this->deactivateChildren($child); // đệ quy
        }
    }
    

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Category $category)
    {
        // Nếu có danh mục con thì không cho xóa
        if ($category->children()->count() > 0) {
            return back()->with('error', 'Không thể xóa danh mục vì có danh mục con.');
        }
    
        // Nếu có sản phẩm thuộc danh mục này cũng nên kiểm tra ở đây (nếu dùng bảng products)
        // if ($category->products()->count() > 0) {
        //     return back()->with('error', 'Không thể xóa vì có sản phẩm liên kết.');
        // }
    
        $category->delete();
    
        return redirect()->route('admin.categories.index')->with('success', 'Xóa danh mục thành công.');
    }
    
}
