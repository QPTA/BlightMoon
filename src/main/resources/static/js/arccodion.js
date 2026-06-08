document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('.accordion-header').forEach(function (header) {
        header.addEventListener('click', function () {
            var body = this.nextElementSibling;
            var icon = this.querySelector('.accordion-icon');
            var isOpen = body.classList.contains('open');

            document.querySelectorAll('.accordion-body').forEach(function (accordionBody) {
                accordionBody.classList.remove('open');
            });
            document.querySelectorAll('.accordion-icon').forEach(function (accordionIcon) {
                accordionIcon.style.transform = '';
            });

            if (!isOpen) {
                body.classList.add('open');
                if (icon) {
                    icon.style.transform = 'rotate(45deg)';
                }
            }
        });
    });
});
