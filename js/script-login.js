const form = document.getElementById('login-form');
const input_login_1 = document.getElementById('input_login_1');
const input_login_2 = document.getElementById('input_login_2');
const submitButton = document.getElementById('registrar');
submitButton.disabled = true;

form.addEventListener('input', function() {
    if (input_login_1.value !== '' 
        && input_login_2.value !== '') {
        submitButton.disabled = false;
    } else {
        submitButton.disabled = true;
    }
});