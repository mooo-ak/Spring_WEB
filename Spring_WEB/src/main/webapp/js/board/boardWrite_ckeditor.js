var ckeditor = document.querySelector('.editor');

// 에디터 실행
ClassicEditor
.create( ckeditor )
.then( editor => {
        console.log( editor );
} )
.catch( error => {
        console.error( error );
} );