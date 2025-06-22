@if($banners->count())
    <div class="mb-6">
        <div class="rounded overflow-hidden shadow">
            <img src="{{ asset('storage/' . $banners->first()->image) }}" class="w-full object-cover max-h-96" alt="Banner">
        </div>
    </div>
@endif
