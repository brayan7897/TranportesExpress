const form = document.getElementById('register-form');
const input_regis_1 = document.getElementById('input_regis_1');
const input_regis_2 = document.getElementById('input_regis_2');
const input_regis_3 = document.getElementById('input_regis_3');
const input_regis_4 = document.getElementById('input_regis_4');
const input_regis_5 = document.getElementById('input_regis_5');
const input_regis_6 = document.getElementById('input_regis_6');
const submitButton = document.getElementById('registrar');
submitButton.disabled = true;

form.addEventListener('input', function() {
    if (input_regis_1.value !== '' 
    && input_regis_2.value !== ''
    && input_regis_3.value !== ''
    && input_regis_4.value !== ''
    && input_regis_5.value !== ''
    && input_regis_6.value !== '') {
        
    submitButton.disabled = false;
    } else {
    submitButton.disabled = true;
    }
});