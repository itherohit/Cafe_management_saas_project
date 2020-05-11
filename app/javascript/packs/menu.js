function get_menu_json() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var menu_json = JSON.parse(this.responseText);
            addcart(menu_json);
        }
    };
    xhttp.open("GET", "/menuitems/new", true);
    xhttp.send();
}

function addcart(menu_json) {
    let add_cart = document.querySelectorAll('.add-cart');
    for (let i = 0; i < add_cart.length; i++) {
        add_cart[i].addEventListener('click', () => {
            cartNumber(menu_json[i]);
        })
    }
}

function cartNumber(item) {

    let itemNumber = localStorage.getItem('cartNumber');
    itemNumber = parseInt(itemNumber);

    if (itemNumber) {
        localStorage.setItem('cartNumber', itemNumber + 1);
        document.querySelector('.cart-number').innerHTML = itemNumber + 1;
    } else {
        localStorage.setItem('cartNumber', 1);
        document.querySelector('.cart-number').innerHTML = 1;
    }
}

function onloadcartNumber() {
    let itemNumber = localStorage.getItem('cartNumber');
    if (itemNumber) {
        document.querySelector('.cart-number').innerHTML = itemNumber;
    }
}

get_menu_json()
onloadcartNumber()