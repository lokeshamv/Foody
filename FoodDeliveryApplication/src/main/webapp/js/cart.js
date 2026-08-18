// =========================================
// FOODY CART JAVASCRIPT
// =========================================

document.addEventListener("DOMContentLoaded", function () {

    // =============================
    // Page Fade In
    // =============================

    document.body.style.opacity = "0";

    setTimeout(function () {

        document.body.style.transition = "opacity .6s";

        document.body.style.opacity = "1";

    },100);




    // =============================
    // Remove Confirmation
    // =============================

    const removeButtons = document.querySelectorAll(".remove");

    removeButtons.forEach(function(btn){

        btn.addEventListener("click",function(e){

            let result = confirm("Remove this item from cart?");

            if(!result){

                e.preventDefault();

            }

        });

    });




    // =============================
    // Clear Cart Confirmation
    // =============================

    const clearButton = document.querySelector(".clear-btn");

    if(clearButton){

        clearButton.addEventListener("click",function(e){

            let result = confirm("Clear all items from cart?");

            if(!result){

                e.preventDefault();

            }

        });

    }




    // =============================
    // Checkout Confirmation
    // =============================

    const checkoutButton = document.querySelector(".checkout-btn");

    if(checkoutButton){

        checkoutButton.addEventListener("click",function(e){

            let result = confirm("Proceed to Checkout?");

            if(!result){

                e.preventDefault();

            }

        });

    }




    // =============================
    // Button Hover Animation
    // =============================

    document.querySelectorAll("button").forEach(function(btn){

        btn.addEventListener("mouseenter",function(){

            btn.style.transform="scale(1.05)";

        });

        btn.addEventListener("mouseleave",function(){

            btn.style.transform="scale(1)";

        });

    });




    // =============================
    // Quantity Animation
    // =============================

    document.querySelectorAll(".quantity a").forEach(function(btn){

        btn.addEventListener("click",function(){

            btn.style.transform="scale(.8)";

            setTimeout(function(){

                btn.style.transform="scale(1)";

            },150);

        });

    });

});



// =========================================
// Back To Top Button
// =========================================

const topButton = document.createElement("button");

topButton.innerHTML = "⬆";

topButton.id="topBtn";

document.body.appendChild(topButton);

topButton.style.position="fixed";
topButton.style.right="30px";
topButton.style.bottom="30px";
topButton.style.width="55px";
topButton.style.height="55px";
topButton.style.borderRadius="50%";
topButton.style.border="none";
topButton.style.background="#ff5200";
topButton.style.color="#fff";
topButton.style.fontSize="22px";
topButton.style.cursor="pointer";
topButton.style.display="none";
topButton.style.zIndex="999";
topButton.style.boxShadow="0 8px 20px rgba(0,0,0,.25)";

window.addEventListener("scroll",function(){

    if(window.scrollY>300){

        topButton.style.display="block";

    }
    else{

        topButton.style.display="none";

    }

});

topButton.onclick=function(){

    window.scrollTo({

        top:0,

        behavior:"smooth"

    });

};