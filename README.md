# !!! DEPRECATED !!!

The 3.10 release of Genero includes Built-in Web Components, one of which is the fglrichtext Web Component http://4js.com/online_documentation/fjs-fgl-manual-html/#c_fgl_fgl_web_components_fglrichtext.html.  I would encourage you to use this WebComponent for your rich text editing requirements.


# wc_tinymce
Web Component interfacing to TinyMCE Rich Text Editor

(More details about TinyMCe can be found here https://www.tinymce.com/)

To setup, you will need to place the TinyMCE sources in this directory 
$(ProjectDir)/webcomponents/wc_tinymce/tinymce

I took the copy that was shipped in latest GAS version.  So do something like ...
cp $FGLASDIR/tpl/SetHtml5/tinymce $(ProjectDir)/webcomponents/wc_tinymce/tinymce

Key thing is it is looking for 
$(ProjectDir)/webcomponents/wc_tinymce/tinymce/tinymce.min.js

TODO

1. See if can figure out better way to tie 4gl variable to contents of Web Component
2. Add wrappers to set toolbar/menu programmatically

