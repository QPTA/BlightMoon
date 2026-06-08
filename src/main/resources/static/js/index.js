
    function closeVideo(){

    const modal = document.getElementById("videoModal");
    const video = document.getElementById("videoPlayer");

    modal.style.display = "none";

    video.pause();
    video.currentTime = 0;
}
    function openVideo(){
        document.getElementById("videoModal").style.display = "flex";
    }

    function closeVideo(){

        const modal = document.getElementById("videoModal");
        const video = document.getElementById("trailerVideo");

        modal.style.display = "none";

        video.pause();
        video.currentTime = 0;
    }
document.addEventListener('DOMContentLoaded', function () {

    // Navbar scroll
    var navbar = document.querySelector('.navbar');
    window.addEventListener('scroll', function () {
        if (window.scrollY > 60) {
            navbar.style.background = 'rgba(8,6,4,0.99)';
        } else {
            navbar.style.background = '';
        }
    });

    // Hamburger menu
    var hamburger = document.getElementById('hamburger');
    var mobileMenu = document.getElementById('mobileMenu');
    if (hamburger && mobileMenu) {
        hamburger.addEventListener('click', function () {
            var isOpen = mobileMenu.classList.toggle('open');
            var spans = hamburger.querySelectorAll('span');
            if (isOpen) {
                spans[0].style.transform = 'rotate(45deg) translate(5px, 5px)';
                spans[1].style.opacity = '0';
                spans[2].style.transform = 'rotate(-45deg) translate(5px, -5px)';
            } else {
                spans[0].style.transform = '';
                spans[1].style.opacity = '';
                spans[2].style.transform = '';
            }
        });
        document.addEventListener('click', function (e) {
            if (!hamburger.contains(e.target) && !mobileMenu.contains(e.target)) {
                mobileMenu.classList.remove('open');
                hamburger.querySelectorAll('span').forEach(function(s){ s.style.transform=''; s.style.opacity=''; });
            }
        });
    }

    // Accordion
    document.querySelectorAll('.accordion-header').forEach(function (header) {
        header.addEventListener('click', function () {
            var body = this.nextElementSibling;
            var icon = this.querySelector('.accordion-icon');
            var isOpen = body.classList.contains('open');
            document.querySelectorAll('.accordion-body').forEach(function (b) { b.classList.remove('open'); });
            document.querySelectorAll('.accordion-icon').forEach(function (i) { i.style.transform = ''; });
            if (!isOpen) {
                body.classList.add('open');
                if (icon) icon.style.transform = 'rotate(45deg)';
            }
        });
    });

    // Stat bar animation
    if ('IntersectionObserver' in window) {
        var statObs = new IntersectionObserver(function (entries) {
            entries.forEach(function (entry) {
                if (entry.isIntersecting) {
                    var fill = entry.target;
                    var target = fill.getAttribute('data-width');
                    fill.style.width = '0';
                    setTimeout(function () { fill.style.width = target; }, 100);
                    statObs.unobserve(fill);
                }
            });
        }, { threshold: 0.3 });

        document.querySelectorAll('.stat-bar-fill').forEach(function (fill) {
            fill.setAttribute('data-width', fill.style.width);
            fill.style.width = '0';
            statObs.observe(fill);
        });

        // Fade in cards
        var fadeObs = new IntersectionObserver(function (entries) {
            entries.forEach(function (entry) {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                    fadeObs.unobserve(entry.target);
                }
            });
        }, { threshold: 0.08, rootMargin: '0px 0px -30px 0px' });

        document.querySelectorAll('.card, .character-card, .enemy-card, .weapon-card, .location-card, .community-platform, .split-section').forEach(function (el) {
            el.style.opacity = '0';
            el.style.transition = 'opacity 0.65s ease, transform 0.65s ease';
            el.style.transform = 'translateY(22px)';
            fadeObs.observe(el);
        });
    }

    // Parallax hero
    var heroBg = document.querySelector('.hero-bg');
    if (heroBg) {
        window.addEventListener('scroll', function () {
            heroBg.style.transform = 'translateY(' + (window.scrollY * 0.28) + 'px)';
        }, { passive: true });
    }

});
