<?php
function showCategories($categories, $parent_id = null, $prefix = '')
{
    foreach ($categories as $category) {
        if ($category->parent_id === $parent_id) {
            echo '<tr class="border-t">';
            echo '<td class="px-4 py-2">#</td>';
            echo '<td class="px-4 py-2">' . $prefix . $category->name . '</td>';
            echo '<td class="px-4 py-2">' . ($category->parent->name ?? 'Không có') . '</td>';
            echo '<td class="px-4 py-2">' . $category->slug . '</td>';
            echo '<td class="px-4 py-2">
                    <a href="' . route('admin.categories.edit', $category->id) . '" class="text-yellow-600 hover:underline mr-2">Sửa</a>
                    <form action="' . route('admin.categories.destroy', $category->id) . '" method="POST" class="inline-block" onsubmit="return confirm(\'Bạn có chắc chắn muốn xóa?\')">
                        ' . csrf_field() . method_field('DELETE') . '
                        <button type="submit" class="text-red-600 hover:underline">Xóa</button>
                    </form>
                  </td>';
            echo '</tr>';

            // Đệ quy hiển thị danh mục con
            showCategories($categories, $category->id, $prefix . '— ');
        }
    }
}
