// dante.js
const dante = document.getElementById('dante');
const space = document.querySelector('.space-bg');

function animateDante() {
    const screenWidth = window.innerWidth;
    const danteWidth = dante.offsetWidth;
    let pos = screenWidth;
    dante.style.left = pos + 'px';
    dante.style.display = 'block';

    function frame() {
        pos -= 2; // speed in px per frame
        dante.style.left = pos + 'px';
        if (pos + danteWidth > 0) {
            requestAnimationFrame(frame);
        } else {
            setTimeout(animateDante, 500); // pause before repeating
        }
    }
    frame();
}

window.addEventListener('load', () => {
    dante.style.display = 'none';
    setTimeout(animateDante, 300);
});

window.addEventListener('resize', () => {
    // Restart animation on resize for responsiveness
    dante.style.display = 'none';
    setTimeout(animateDante, 300);
});
