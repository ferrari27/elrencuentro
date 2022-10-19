//Script size de navbar
window.onload = function () {
    screensize();
    removeWidget();
};
window.onresize = function () {
    screensize();
};
/*
function screensize() {
    if (window.innerWidth > 1100) {
        document.getElementById("logo").setAttribute('style', 'margin-right: 14rem');
        var element = document.getElementById("containerMid");
        element.classList.remove("container");
        element.classList.add("container-fluid");
    } else {
        document.getElementById("logo").setAttribute('style', 'margin-right: 0rem');
        var element = document.getElementById("containerMid");
        element.classList.remove("container-fluid");
        element.classList.add("container");
    }
};*/

//Script de opacidad del header
window.onscroll = function () {
    scrollFunction();
    removeWidget();
};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("navbar").setAttribute('style', 'background-color: rgba(0, 0, 0, 1)!important');
    } else {
        document.getElementById("navbar").setAttribute('style', 'background-color: rgba(0, 0, 0, 0.2)!important');
    }
}

//Remover marcadeagua
function removeWidget() {
    var parentWidget = document.getElementById("eapps-number-counter-79004f85-59c0-4ec4-af6d-566d1421fb55");
    //    console.log(parentWidget);
    var child1 = parentWidget.firstChild;
    //    console.log(child1);
    if (child1.childElementCount == 2) {
        var child2 = child1.lastChild;
        //    console.log(child2);
        child2.remove();
    }
    

}

function validar(){
    var resultado=true;
    var ObjElemento=document.getElementById(nombre);
    
    if(isNaN(ObjElemento.value)==true || /^[1-9]/.test(ObjElemento.value)==false)
      {
       alert('Campo ' + ObjElemento.name + ' incorrecto. ');
       resultado=false; 
      }
    
    return resultado;
}