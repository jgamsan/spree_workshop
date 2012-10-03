//= require store/spree_core

$(function() {
  // when the #country field changes
  $("select#workshop_province").live("change", function() {
    // make a POST call and replace the content
    var province = $('select#workshop_province :selected').val();
    if(province == "") province="0";
    $.get('/workshops/update_town_select/' + province, function(data){
      $("#workshopTowns").html(data);
    });
    return false;
  });
});
