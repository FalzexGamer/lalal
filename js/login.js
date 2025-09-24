// Login form enhancements
document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('loginForm');
    const submitBtn = document.getElementById('submitBtn');
    
    if (form && submitBtn) {
        form.addEventListener('submit', function(e) {
            if (!validateForm()) {
                e.preventDefault();
                showError('Please fill in all required fields');
            } else {
                showLoading();
            }
        });
    }
    
    function validateForm() {
        const email = document.getElementById('email').value.trim();
        const password = document.getElementById('password').value;
        return email && password;
    }
    
    function showError(message) {
        const errorDiv = document.createElement('div');
        errorDiv.className = 'error-message';
        errorDiv.textContent = message;
        form.parentElement.insertBefore(errorDiv, form);
        
        setTimeout(() => {
            if (errorDiv.parentElement) {
                errorDiv.remove();
            }
        }, 5000);
    }
    
    function showLoading() {
        submitBtn.classList.add('loading');
        submitBtn.textContent = 'Signing In...';
    }
});
