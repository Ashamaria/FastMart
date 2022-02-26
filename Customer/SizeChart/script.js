$(document).ready(function(){ 
    $(".size-guide-tabs a").click(function(e){
    	e.preventDefault();
    	$(this).tab('show');
    });
});