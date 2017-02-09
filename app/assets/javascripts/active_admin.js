

//= require active_admin/base
//= require tinymce

$(document).ready(function() {
    tinyMCE.init({
        mode: 'textareas',
        theme: 'advanced',
        editor_selector: 'tinymce_editor'
    });
});

//var CKEDITOR_BASEPATH = '/assets/ckeditor/';
