// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery_ujs
//= require image-picker
import "@hotwired/turbo-rails"
import "controllers"

$(document).ready(function(){ 
    $("#group_icon_id").imagepicker({
      hide_select:  true, 
      show_label:   true,
      clicked:function(){
        const image_url = document.getElementById("group_icon");
        image_url.value = $(this).find("option[value='" + $(this).val() + "']").data('img-src')
          }
        });
     });   
