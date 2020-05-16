window.onscroll = () => {
    const nav = document.querySelector('.navbar');
    if (window.scrollY >= 200)
        nav.classList.add("nav-scrolled");
    else
        nav.classList.remove("nav-scrolled");
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
    console.log("run");
    add_cart_sign[i].addEventListener('click', popup, false);
}

function popup() {
    console.log("running");
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

document.getElementById('sign-in-link').addEventListener('click', popup, false);
document.getElementById('sign-in-link-b').addEventListener('click', popup, false);