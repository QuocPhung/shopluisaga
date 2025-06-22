<aside class="w-full md:w-64 bg-white shadow-md p-4 hidden md:block">
    <h2 class="text-lg font-bold text-gray-700 mb-4">📂 Danh mục</h2>

    <ul class="space-y-2">
        @foreach ($categories as $cat)
            <li>
                <a href="#" class="block px-3 py-2 rounded hover:bg-blue-100 hover:text-blue-600 transition">
                    📁 {{ $cat->name }}
                </a>
            </li>
        @endforeach
    </ul>
</aside>
