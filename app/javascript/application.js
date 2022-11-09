// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails



import jquery from 'jquery';
window.jQuery = jquery;
window.$ = jquery;
window.jquery = jquery;


console.log($); // ok
//= require rails-ujs
//= require jquery
//= require materialize
//= require turbolinks
//= require_tree .

