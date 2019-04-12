$(document).ready(function(){
	"use strict";
	

$("#sidebar-btn").click(function(){
	if(("#collapse-it").hasClass(".collapsed-sidebar")){
		$("#applications").removeClass("col-10");
		$("#applications").addClass("col-11");
	}
	else{
		$("#applications").removeClass("col-11");
		$("#applications").addClass("col-10");
	}
});


	$( function() {
    $( "#sortable1, #sortable2" ).sortable({
      connectWith: ".connectedSortable"
    }).disableSelection();
  });
	
	
	


      });

	

