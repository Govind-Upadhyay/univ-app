// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "jquery"
import '../stylesheets/application'
import 'materialize-css/dist/js/materialize'

Rails.start()
Turbolinks.start()
ActiveStorage.start()
require("jquery")



$( document ).on('turbolinks:load', function(){
	$(".dropdown-trigger").dropdown();
	$('.sidenav').sidenav();
	$(".cls-btn").click(function(){
  			$(this).parent().slideUp();
    });
});