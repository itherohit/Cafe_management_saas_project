window.onload = startTime();

function startTime() {

    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    m = checkTime(m);
    if (h >= 12) {
        var s = " PM ";
    } else {
        var s = " AM ";
    }
    document.getElementById('time').innerHTML =
        h % 12 + " : " + m + s;
    var t = setTimeout(startTime, 500);
}

function checkTime(i) {
    if (i < 10) {
        i = "0" + i
    }; // add zero in front of numbers < 10
    return i;
}


let clerkBtn = document.querySelectorAll('.clerk-sec-list-btn');
let clerkSec = document.querySelectorAll('.clerk-sec-pennding-orders');

for (let i = 0; i < clerkBtn.length; i++) {
    clerkBtn[i].addEventListener('click', () => {
        borderBtn = document.querySelector('.border-bottom');
        visibleBtn = document.querySelector('.visible');
        borderBtn.classList.remove('border-bottom');
        visibleBtn.classList.remove('visible');
        clerkBtn[i].classList.add('border-bottom');
        clerkSec[i].classList.add('visible');
    })
}