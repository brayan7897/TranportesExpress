const button = document.getElementById('registrar');

const animation_content = document.getElementById('animation-content');
const wrapper = document.getElementById('wrapper');
const checkmark = document.getElementById('checkmark');
const checkmark__circle = document.getElementById('checkmark__circle');
const checkmark__check = document.getElementById('checkmark__check');

button.addEventListener('click', function() {
    animation_content.classList.remove('animation-content');
    animation_content.classList.toggle('animation-content-active');
    wrapper.classList.toggle('wrapper-init');
    checkmark.classList.toggle('checkmark');
    checkmark__circle.classList.toggle('checkmark__circle');
    checkmark__check.classList.toggle('checkmark__check');
});