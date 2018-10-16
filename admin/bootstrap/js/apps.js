$(document).ready(function(){
	$('.form_reg').click(function(){
		var id = this.id;
		var url ="?page="+id;

		location.href = url;
	});

	$(".tbl-scroll").DataTable({       
        "scrollCollapse" : true,
        "paging": true
    });
});

function showMyImage(fileInput) {
    var files = fileInput.files;
    var iSize = ($("#fupload")[0].files[0].size / 1024);
    var iType = ($("#fupload")[0].files[0].type);        
    iSize = (Math.round((iSize / 1024) * 100) / 100);
            
    if(iSize > 1){
        alert('Max size : 1 MB');
    }else{
        for (var i = 0; i < files.length; i++) {           
            var file = files[i];
            var imageType = /image.*/;     
            if (!file.type.match(imageType)) {
                continue;
            }           
            var img=document.getElementById("imagePreview");            
            img.file = file;    
            var reader = new FileReader();
            reader.onload = (function(aImg) { 
                return function(e) { 
                    aImg.src = e.target.result; 
                }; 
            })(img);
            reader.readAsDataURL(file);
        }    
    }            
}

$(function () {$("[data-toggle='tooltip']").tooltip();});
