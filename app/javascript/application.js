// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery_ujs
//= require image-picker
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false
import "controllers"


const img = document.getElementById("group_icon_id")
img.addEventListener("load", () => {
 
})
  
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
