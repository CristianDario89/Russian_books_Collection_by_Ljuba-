

	$(document).ready(function() {
		  $("form #form_contacto").validate({
            rules:{
                 nombre:"required"
               },
             messages:{
                nombre:"Obligatorio"
              }
             
        });    
	});
 