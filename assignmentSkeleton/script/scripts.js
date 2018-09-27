// Keep your scripts in here
var gst = 1.15;

function pricePlusGST(price){
    price *= gst;
    return price;
}

$(document).ready(function () {
    pricePlusGST(price);
})