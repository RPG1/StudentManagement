const imageContainer = document.getElementById('image-container');
let xPos = 0;

function moveImages() {
    xPos += 10;
    imageContainer.style.transform = `translateX(${xPos}px)`;
    requestAnimationFrame(moveImages);
}

moveImages();