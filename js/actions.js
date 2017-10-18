$(document).ready(function(){
  /* document.getElementById("img1") .addEventListener("mouseover",cambiar,false);
    
     document.getElementById("img1") .addEventListener("mouseout",restaurar,false);*/
    
    var miImagenes = document.querySelectorAll("img");
    for(var i=0;i<miImagenes.length;i++){
        miImagenes[i].addEventListener("mouseover",modo_lectura,false);
         miImagenes[i].addEventListener("mouseout",restaurar,false);
    }
    
});

function modo_lectura(e){
      if(e.target===img1){
        $("#img1").attr("src","../img/3/21.jpg");
    }else if(e.target===img2){
        $("#img2").attr("src","../img/3/22.jpg");
    }else if(e.target===img6){
        $("#img6").attr("src","../img/3/23.jpg");
    }  else if(e.target===img4){
        $("#img4").attr("src","../img/3/24.jpg");
    }
    
}

function restaurar(e){
      if(e.target===img1){
        $("#img1").attr("src","../img/2/1.jpg");
    }else if(e.target===img2){
        $("#img2").attr("src","../img/2/2.jpg");
    }else if(e.target===img6){
        $("#img6").attr("src","../img/2/6.jpg");
    }else if(e.target===img4){
        $("#img4").attr("src","../img/2/5.jpg");
    }
}