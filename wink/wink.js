// wink.js

const img = document.getElementById('wink-image');
const audio = document.getElementById('wink-audio');

// Preload wink.png image
const winkPreload = new Image();
winkPreload.src = './static/wink.png';

function showWink() {
    img.src = './static/wink.png';
    audio.currentTime = 0;
    audio.play();
}

function showOriginal() {
    img.src = './static/original.png';
}

// Mouse events
img.addEventListener('mousedown', showWink);
img.addEventListener('mouseup', showOriginal);
img.addEventListener('mouseleave', showOriginal);

// Touch events for mobile
img.addEventListener('touchstart', function(e) {
    e.preventDefault();
    showWink();
}, { passive: false });
img.addEventListener('touchend', function(e) {
    e.preventDefault();
    showOriginal();
}, { passive: false });
img.addEventListener('touchcancel', function(e) {
    e.preventDefault();
    showOriginal();
}, { passive: false });
