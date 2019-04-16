$(document).ready(function(){
	"use strict";
	
	$(function () {
  		$('[data-toggle="tooltip"]').tooltip();
	});

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
		  //Set classes initially for application cards
		  $("#sortable1 > li").addClass("new-app");
		  $("#sortable1 > li").removeClass("reviewed-app");
		  $("#sortable2 > li").addClass("reviewed-app");
		  $("#sortable2 > li").removeClass("new-app");
		  $("#sortable1 button").html("<i data-feather=\"eye\"></i>");
		  $("#sortable2 button").html("<i data-feather=\"bookmark\"></i>");
	feather.replace();
$( function() {
    $( "#sortable1, #sortable2" ).sortable({
	  update: function( event, ui ) {
		 /* //Card Styling
		  $("#sortable1 > li").addClass("new-app");
		  $("#sortable1 > li").removeClass("reviewed-app");
		  $("#sortable2 > li").addClass("reviewed-app");
		  $("#sortable2 > li").removeClass("new-app");
		  
		  //Button Styling
		  $("#sortable1 button").addClass("app-action-btn-green");
		  $("#sortable1 button").removeClass("app-action-btn-grey");
		  $("#sortable2 button").addClass("app-action-btn-grey");
		  $("#sortable2 button").removeClass("app-action-btn-green");
		   $("#sortable1 button").html("<i data-feather=\"eye\"></i>");
		  $("#sortable2 button").html("<i data-feather=\"bookmark\"></i>");
		  feather.replace(); */
		   $("#sortable1 .action-drop").html("<button class=\"btn dropdown-toggle mt-1 app-action-btn-green\" type=\"button\" onclick=\"window.location.href = 'applications/001.html';\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> <i data-feather=\"eye\"></i></button>");
		   $("#sortable2 .action-drop").html("<button class=\"btn dropdown-toggle mt-1 app-action-btn-grey\" type=\"button\" data-toggle=\"modal\" data-target=\"#markModal\" aria-haspopup=\"true\" aria-expanded=\"false\"><i data-feather=\"bookmark\"></i></button>");
		   $("#sortable1 > li").addClass("new-app");
		  $("#sortable1 > li").removeClass("reviewed-app");
		  $("#sortable2 > li").addClass("reviewed-app");
		  $("#sortable2 > li").removeClass("new-app");
		  feather.replace();
	  },
      connectWith: ".connectedSortable"
    }).disableSelection();
  });
      });

	