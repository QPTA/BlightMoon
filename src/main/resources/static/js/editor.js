
tinymce.init({
    selector: '#content',

    height: 500,

    menubar: false,

    plugins: [
        'lists',
        'link'
    ],

    toolbar:
        'undo redo | ' +
        'styles | ' +
        'bold italic underline | ' +
        'bullist numlist | ' +
        'link'
});
