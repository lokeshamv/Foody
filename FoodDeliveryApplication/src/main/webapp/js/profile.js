document.addEventListener("DOMContentLoaded",function(){

    // Fade In

    document.body.style.opacity="0";

    setTimeout(function(){

        document.body.style.transition="opacity .6s";

        document.body.style.opacity="1";

    },100);



    // Logout Confirmation

    const logout=document.querySelector(".logout-btn");

    if(logout){

        logout.addEventListener("click",function(e){

            if(!confirm("Are you sure you want to logout?")){

                e.preventDefault();

            }

        });

    }



    // Hover Animation

    document.querySelectorAll(".profile-buttons a").forEach(function(btn){

        btn.addEventListener("mouseenter",function(){

            btn.style.transform="translateY(-3px)";

        });

        btn.addEventListener("mouseleave",function(){

            btn.style.transform="translateY(0)";

        });

    });

});



// Back To Top Button

const topButton=document.createElement("button");

topButton.innerHTML="⬆";

topButton.id="topBtn";

document.body.appendChild(topButton);

topButton.style.position="fixed";
topButton.style.right="30px";
topButton.style.bottom="30px";
topButton.style.width="50px";
topButton.style.height="50px";
topButton.style.borderRadius="50%";
topButton.style.border="none";
topButton.style.background="#ff5200";
topButton.style.color="#fff";
topButton.style.cursor="pointer";
topButton.style.display="none";
topButton.style.fontSize="20px";

window.addEventListener("scroll",function(){

    if(window.scrollY>300){

        topButton.style.display="block";

    }else{

        topButton.style.display="none";

    }

});

topButton.onclick=function(){

    window.scrollTo({

        top:0,

        behavior:"smooth"

    });

};