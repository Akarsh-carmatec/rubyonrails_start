$(document).ready(function (){

    if($("body").find('.select_checkbox:checked').length > 1){
        $("body").find(".delete_all").slideDown(300);
    }
    else{
        $("body").find(".delete_all").slideUp(300);
    }

    $("body").on('click','#check-box-selectall',function() { 
        if(this.checked) { 
            $("body").find('.select_checkbox').each(function() { 
                this.checked = true; 
                $("body").find(".delete_all").slideDown(300);
            });
        }
        else{
            $("body").find('.select_checkbox').each(function() {
                this.checked = false; 
                $("body").find(".delete_all").slideUp(300);
            }); 
        }
    }); 
  
    $("body").on('click','.select_checkbox',function() {           
        if($("body").find('.select_checkbox:checked').length == $('.select_checkbox').length){
            $("body").find("#check-box-selectall").prop( "checked", true );
        }else{
            $("body").find("#check-box-selectall").prop( "checked", false );  
        }
        if($("body").find('.select_checkbox:checked').length > 1){
            $("body").find(".delete_all").slideDown(300);
        }
        else{
            $("body").find(".delete_all").slideUp(300);
        }
    }); 

});
