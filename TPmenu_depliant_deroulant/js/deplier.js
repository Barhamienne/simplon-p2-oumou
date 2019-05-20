var i = 0;

function boutonmenu() {
    if (i == 0) {
        document.getElementById("menu").style.
        transform = 'rotate(0deg)';
        document.getElementById("list").style.
        left = '0';
        i = 1;
    } else {
        document.getElementById("menu").style.
        transform = 'rotate (0deg)';
        document.getElementById("list").style.
        left = '-200px';
        i = 0;
    }
}