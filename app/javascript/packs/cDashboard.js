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

let order_list = document.querySelectorAll('.clerk-sec-pennding-orders-order');

for (let i = 0; i < order_list.length; i++) {
    order_list[i].addEventListener('click', () => {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var order_json = JSON.parse(this.responseText);
                orderitems(order_json);
            }
        };
        xhttp.open("GET", "/cart/" + order_list[i].id, true);
        xhttp.send();
    })
}

function orderitems(order_json) {
    let list = document.querySelector('.order-list-items');
    list.innerHTML = '';
    Object.values(order_json).map(order => {
        list.innerHTML += `<p class="order-list-items-para">${order.item_name}(x${order.incart})</p>`
    })
}