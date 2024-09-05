/*FUNCION CARDS VIDEOS HOME*/
const slider = document.querySelector('.cardList');
const sliderItems = document.querySelectorAll('.cardVideo');
const prevButton = document.querySelector('.slider-button.left');
const nextButton = document.querySelector('.slider-button.right');

let currentIndex = 0;
const itemsToShow = 3;
const totalItems = sliderItems.length;

function updateSliderPosition() {
    const maxIndex = totalItems - itemsToShow;
    const offset = Math.min(currentIndex, maxIndex) * (100 / itemsToShow);
    slider.style.transform = `translateX(-${offset}%)`;
}

prevButton.addEventListener('click', () => {
    if (currentIndex > 0) {
        currentIndex--;
        updateSliderPosition();
    }
});

nextButton.addEventListener('click', () => {
    if (currentIndex < totalItems - itemsToShow) {
        currentIndex++;
        updateSliderPosition();
    }
});






