//Script size de navbar
window.onload = function() {
    var contador = document.getElementById("contador");
    //variable auxiliar para que solo se ejecute una vez el contador
    //  removeWidget();
};
window.onresize = function() {};
var contadorAux = 0;

function isElementInViewport(el) {
    var rect = el.getBoundingClientRect();
    return (
        rect.top >= 0 &&
        rect.left >= 0 &&
        rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) && /* or $(window).height() */
        rect.right <= (window.innerWidth || document.documentElement.clientWidth) /* or $(window).width() */
    );
}

function count() {
    var counter = { var: 0 };
    TweenMax.to(counter, 3, {
        var: 29,
        onUpdate: function() {
            var number = Math.ceil(counter.var);
            $('.counter').html(number);
            if (number === counter.var) {
                count = 29;
            }
        },
        onComplete: function() {
            count();
        },
        ease: Circ.easeOut
    });
    contadorAux = contadorAux + 1;
}

//Script de opacidad del header
window.onscroll = function() {
    scrollFunction();
    //Ejecucion del contador
    if (isElementInViewport(contador) == true && contadorAux == 0) {
        count();
    }
};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("navbar").setAttribute('style', 'background-color: rgba(0, 0, 0, 1)!important');
    } else {
        document.getElementById("navbar").setAttribute('style', 'background-color: rgba(0, 0, 0, 0.2)!important');
    }
}

//Remover marcadeagua
//function removeWidget() {
// var parentWidget = document.getElementById("eapps-number-counter-79004f85-59c0-4ec4-af6d-566d1421fb55");
//    console.log(parentWidget);
//  var child1 = parentWidget.firstChild;
//    console.log(child1);
//  if (child1.childElementCount == 2) {
//     var child2 = child1.lastChild;
//    //    console.log(child2);
//      child2.remove();
//   }
// }

function confirmacion() {
    var respuesta = confirm("Desea enviar este mensaje? \nAl enviarlo se actualizara la pagina");
    if (respuesta == true) {
        return true;
    } else {
        return false;
    }
}