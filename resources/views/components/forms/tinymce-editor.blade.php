@props([
    'name' => 'description',   // Tên field mặc định là "description"
    'value' => '',             // Nội dung mặc định
])

<textarea name="{{ $name }}" class="tinymce w-full border rounded p-2" rows="10">
    {{ old($name, $value) }}
</textarea>
