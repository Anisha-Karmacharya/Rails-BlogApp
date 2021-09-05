// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import 'bootstrap/dist/css/bootstrap'
require('bootstrap')
require ('jquery-3.2.1.slim.min')
require ('popper.min')
require ('bootstrap.min')
require ('bootstrap-datepicker/core')
require ('bootstrap-datepicker/locales/bootstrap-datepicker.en-GB.js')

Rails.start()
Turbolinks.start()
ActiveStorage.start()


$(document).ready(function(){
    $('.datepicker').datepicker({
      format: 'dd/mm/yyyy'
    });
  });