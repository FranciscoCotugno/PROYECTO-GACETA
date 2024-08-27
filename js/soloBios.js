document.addEventListener("DOMContentLoaded", function() {
    const images = document.querySelectorAll('.divImagenes .imagen');

    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('imagen-visible');
            }
        });
    }, { threshold: 0.1 }); // Ajuste para que el efecto se active antes

    images.forEach(image => {
        observer.observe(image);
    });
});
