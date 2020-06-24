window.onload = () => {
    document.getElementById('loader').classList.add("invisible");
}

window.onscroll = () => {
    const nav = document.querySelector('.navbar');
    if (window.scrollY >= 200)
        nav.classList.add("nav-scrolled");
    else
        nav.classList.remove("nav-scrolled");
}


let signOut = document.querySelectorAll("#sign-out");

for (let i = 0; i < signOut.length; i++) {
    signOut[i].addEventListener('click', () => {
        localStorage.clear();
    })
}

let flash = document.querySelector('.falsh-message ');
let flashBtn = document.querySelector('.flash-closeBtn');

if (flashBtn) {
    flashBtn.addEventListener('click', () => {
        flash.classList.remove("zoomIn");
        flash.classList.add("zoomOut");
        flash.classList.add('invisible');
        flash.classList.remove("visible");
    })

}

if (flash) {
    flash.classList.remove('invisible');
    flash.classList.add("visible");
    flash.classList.remove("zoomOut");
    flash.classList.add("zoomIn");
}


const subscribeBtn = document.getElementById('subscribe');
const subscribeForm = document.getElementById('subsForm');
const subsEmail = document.getElementById('subsemail');
const subsInfo = document.getElementById('subsInfo');
if (subscribeBtn) {
    subscribeForm.addEventListener('submit', () => {
        subsInfo.innerHTML = "";
        event.preventDefault();
        const email = subsEmail.value;
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var json = JSON.parse(this.responseText);
                console.log(json);
                if (json.deliverable) {
                    subscribeForm.submit();
                } else {
                    subsInfo.innerHTML = "*Invalid Email";
                }
            }
        };
        xhttp.open("GET", "https://api.trumail.io/v2/lookups/json?email=" + email, true);
        xhttp.send();
    })
}

const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');
const main = document.getElementById('main-section');


signUpButton.addEventListener('click', () => {
    container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
    container.classList.remove("right-panel-active");
});

let add_cart_sign = document.querySelectorAll('.add-cart-sign');

for (let i = 0; i < add_cart_sign.length; i++) {
    add_cart_sign[i].addEventListener('click', popup, false);
}

function popup() {
    container.classList.add("visible");
    container.classList.remove("zoomOut");
    container.classList.add("zoomIn");
    main.classList.add("blur");
    const btn_right = document.getElementById('close-btn-right');
    const btn_left = document.getElementById('close-btn-left');
    if (btn_right || btn_left) {
        btn_right.addEventListener('click', () => {
            container.classList.remove("zoomIn");
            container.classList.add("zoomOut");
            main.classList.remove("blur");
            container.classList.remove("visible");
        });
        btn_left.addEventListener('click', () => {
            container.classList.remove("zoomIn");
            container.classList.add("zoomOut");
            main.classList.remove("blur");
            container.classList.remove("visible");
        });
    }
};

let navBtn = document.querySelectorAll('.nav-link');

for (let i = 0; i < navBtn.length; i++) {
    navBtn[i].addEventListener('click', () => {
        activeBtn = document.querySelector('.active');
        activeBtn.classList.remove('active');
        navBtn[i].classList.add('active');
    })
}

const signInLink = document.querySelectorAll('#sign-in-link');

for (var i = 0; i < signInLink.length; i++) {
    signInLink[i].addEventListener('click', popup, false);
}