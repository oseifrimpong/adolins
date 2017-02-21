//= require active_admin/base
//= require tinymce

$(document).ready(function() {
    tinyMCE.init({
        mode: 'textareas',
        editor_selector: 'tinymce_editor',
        theme: 'modern',
        resize: false,
        statusbar: false,
        //encoding: 'xml',
        menubar: true,
        forced_root_block: false,
       // content_css: "stylesheets/blog-post.css",
        content_style: "p { padding-bottom: 5px !important; text-align: justify !important; font-family:Arial sans-serif !important; }",
        plugins: "lists"

    });
});


//var CKEDITOR_BASEPATH = '/assets/ckeditor/';
