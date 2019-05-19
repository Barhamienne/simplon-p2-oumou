/* Les fonctions

function firstFunction(nom1, nom2) {
    alert('les' + " " + nom1 + " " + 'et les' + " " + nom2);
}
var nom1 = prompt('saisissez un nom de mulatresse')
var nom2 = prompt('saisissez en un deuxieme')

firstFunction(nom1, nom2);


function modulo(a) {
    if (a % 2 == 0) {
        alert(a + " " + " est pair")
    } else {
        alert(a + " " + " est impair")
    }

}
var a = prompt('Saisissez un nombre pour vérifier sa parité')

modulo(a); */

window.onload = ini;

function ini() {
    document.getElementById("allume").style.display = 'none';
    document.getElementById("eteint").style.display = 'block';

}

function clicbouton1() {
    document.getElementById("allume").style.display = 'block';
    document.getElementById("eteint").style.display = 'none';

}

function clicbouton2() {
    document.getElementById("eteint").style.display = 'block';
    document.getElementById("allume").style.display = 'none';


}



/*function clicbouton1(allume) {
    if (document.getElementById(allume).style.display == 'none') {
        document.getElementById(allume).style.display = 'block';

    } else {
        document.getElementById(eteint).style.display = 'none';

    }
}*/


function clicbouton(eteint) {
    if (document.getElementById(eteint).style.display == 'block') {
        document.getElementById(eteint).style.display = 'none';
    } else {
        document.getElementById(eteint).style.display = 'block';

    }
}