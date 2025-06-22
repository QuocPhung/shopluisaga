<script src="https://cdn.tiny.cloud/1/6pq4zb5unmcnm1oq1piokdtbg0cx4jgvzksdyigcjq9j5wbq/tinymce/7/tinymce.min.js" referrerpolicy="origin"></script>
<script>
  tinymce.init({
    selector: 'textarea.tinymce',
    height: 300,
    plugins: 'code image table lists link media',
    toolbar: 'undo redo | styleselect | bold italic underline | alignleft aligncenter alignright | bullist numlist | outdent indent | image link | code',
    automatic_uploads: true,
    images_upload_url: '/your-api-upload-url', // nếu bạn có route này
    images_upload_handler: function (blobInfo, success, failure) {
      const formData = new FormData();
      formData.append('file', blobInfo.blob());

      fetch('/your-api-upload-url', {
        method: 'POST',
        headers: {
          'X-CSRF-TOKEN': '{{ csrf_token() }}'
        },
        body: formData
      })
      .then(res => res.json())
      .then(data => success(data.location))
      .catch(err => failure(err.message));
    }
  });
</script>
