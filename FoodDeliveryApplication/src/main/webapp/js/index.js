// ===============================
// FOODY HOME PAGE JAVASCRIPT
// ===============================

document.addEventListener("DOMContentLoaded", function () {

    // ===========================
    // Sticky Navbar
    // ===========================

    const header = document.querySelector("header");

    window.addEventListener("scroll", function () {

        if (window.scrollY > 80) {

            header.style.boxShadow = "0 8px 20px rgba(0,0,0,.15)";
            header.style.background = "#ffffff";

        } else {

            header.style.boxShadow = "0 3px 15px rgba(0,0,0,.08)";
        }

    });


    // ===========================
    // Smooth Scroll
    // ===========================

    document.querySelectorAll('a[href^="#"]').forEach(anchor => {

        anchor.addEventListener("click", function (e) {

            e.preventDefault();

            const target = document.querySelector(this.getAttribute("href"));

            if (target) {

                target.scrollIntoView({
                    behavior: "smooth"
                });

            }

        });

    });


    // ===========================
    // Search Validation
    // ===========================

    const searchForm = document.querySelector(".search-box");

    if (searchForm) {

        searchForm.addEventListener("submit", function (e) {

            const input = this.querySelector("input");

            if (input.value.trim() === "") {

                e.preventDefault();

                alert("Please enter a restaurant or dish name.");

                input.focus();
            }

        });

    }


    // ===========================
    // Scroll Reveal Animation
    // ===========================

    const cards = document.querySelectorAll(
        ".offer-card, .category, .restaurant-card, .collection-card, .feature, .review"
    );

    const observer = new IntersectionObserver(function (entries) {

        entries.forEach(entry => {

            if (entry.isIntersecting) {

                entry.target.style.opacity = "1";
                entry.target.style.transform = "translateY(0)";

            }

        });

    }, {
        threshold: 0.15
    });

    cards.forEach(card => {

        card.style.opacity = "0";
        card.style.transform = "translateY(50px)";
        card.style.transition = ".6s";

        observer.observe(card);

    });


    // ===========================
    // Button Ripple Effect
    // ===========================

    document.querySelectorAll("button").forEach(button => {

        button.addEventListener("click", function (e) {

            const ripple = document.createElement("span");

            ripple.classList.add("ripple");

            const rect = this.getBoundingClientRect();

            ripple.style.left = (e.clientX - rect.left) + "px";
            ripple.style.top = (e.clientY - rect.top) + "px";

            this.appendChild(ripple);

            setTimeout(() => {

                ripple.remove();

            }, 600);

        });

    });


    // ===========================
    // Category Hover
    // ===========================

    document.querySelectorAll(".category").forEach(card => {

        card.addEventListener("mouseenter", function () {

            this.style.cursor = "pointer";

        });

    });

});


// ===============================
// Back To Top Button
// ===============================

const topButton = document.createElement("button");

topButton.innerHTML = "⬆";

topButton.id = "topBtn";

document.body.appendChild(topButton);

topButton.style.position = "fixed";
topButton.style.right = "30px";
topButton.style.bottom = "30px";
topButton.style.width = "55px";
topButton.style.height = "55px";
topButton.style.borderRadius = "50%";
topButton.style.border = "none";
topButton.style.background = "#ff5200";
topButton.style.color = "#fff";
topButton.style.fontSize = "22px";
topButton.style.cursor = "pointer";
topButton.style.display = "none";
topButton.style.zIndex = "999";
topButton.style.boxShadow = "0 8px 20px rgba(0,0,0,.25)";

window.addEventListener("scroll", function () {

    if (window.scrollY > 400) {

        topButton.style.display = "block";

    } else {

        topButton.style.display = "none";

    }

});

topButton.onclick = function () {

    window.scrollTo({

        top: 0,

        behavior: "smooth"

    });

};


// ===============================
// Loading Screen
// ===============================

window.onload = function () {

    document.body.style.opacity = "0";

    setTimeout(function () {

        document.body.style.transition = "opacity .8s";

        document.body.style.opacity = "1";

    }, 100);

};