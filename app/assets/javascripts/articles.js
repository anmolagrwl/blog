$(document).ready(function(){
 $('.search-field').autocomplete({
    appendTo: '.search-form',
    source: '/search_suggestions'
 });
});