/**
 * Lalal Gold Login Enhancements
 */

class LoginEnhancements {
    constructor() {
        this.form = document.getElementById('loginForm');
        this.submitBtn = document.getElementById('submitBtn');
        this.emailInput = document.getElementById('email');
        this.passwordInput = document.getElementById('password');
        this.init();
    }
    
    init() {
        this.setupEventListeners();
        this.setupPasswordToggle();
        this.setupAnimations();
    }
    
    setupEventListeners() {
        this.emailInput.addEventListener('input', () => this.validateEmail());
        this.passwordInput.addEventListener('input', () => this.validatePassword());
        this.form.addEventListener('submit', (e) => this.handleSubmit(e));
        
        [this.emailInput, this.passwordInput].forEach(input => {
            input.addEventListener('focus', () => this.addFocusClass(input));
            input.addEventListener('blur', () => this.removeFocusClass(input));
        });
    }
    
    setupPasswordToggle() {
        const toggleBtn = document.createElement('button');
        toggleBtn.type = 'button';
        toggleBtn.className = 'password-toggle';
        toggleBtn.innerHTML = '<i class="fas fa-eye"></i>';
        toggleBtn.style.cssText = `
            position: absolute;
            right: 1rem;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            color: #FFD700;
            cursor: pointer;
            font-size: 1.1rem;
            z-index: 3;
        `;
        
        toggleBtn.addEventListener('click', () => {
            const type = this.passwordInput.type === 'password' ? 'text' : 'password';
            this.passwordInput.type = type;
            toggleBtn.innerHTML = type === 'password' ? '<i class="fas fa-eye"></i>' : '<i class="fas fa-eye-slash"></i>';
        });
        
        this.passwordInput.parentElement.appendChild(toggleBtn);
    }
    
    setupAnimations() {
        const formElements = document.querySelectorAll('.form-group, .submit-btn, .forgot-password');
        
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }
            });
        }, { threshold: 0.1 });
        
        formElements.forEach(el => {
            el.style.opacity = '0';
            el.style.transform = 'translateY(20px)';
            el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
            observer.observe(el);
        });
    }
    
    validateEmail() {
        const email = this.emailInput.value.trim();
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        
        if (!email) {
            this.showInputError(this.emailInput, 'Email is required');
            return false;
        }
        
        if (!emailRegex.test(email)) {
            this.showInputError(this.emailInput, 'Please enter a valid email address');
            return false;
        }
        
        this.clearInputError(this.emailInput);
        return true;
    }
    
    validatePassword() {
        const password = this.passwordInput.value;
        
        if (!password) {
            this.showInputError(this.passwordInput, 'Password is required');
            return false;
        }
        
        if (password.length < 8) {
            this.showInputError(this.passwordInput, 'Password must be at least 8 characters');
            return false;
        }
        
        this.clearInputError(this.passwordInput);
        return true;
    }
    
    validateForm() {
        return this.validateEmail() && this.validatePassword();
    }
    
    showInputError(input, message) {
        this.clearInputError(input);
        
        const errorDiv = document.createElement('div');
        errorDiv.className = 'input-error';
        errorDiv.textContent = message;
        errorDiv.style.cssText = `
            color: #ff6b6b;
            font-size: 0.85rem;
            margin-top: 0.5rem;
            margin-left: 0.5rem;
            animation: fadeIn 0.3s ease;
        `;
        
        input.parentElement.appendChild(errorDiv);
        input.style.borderColor = '#ff6b6b';
    }
    
    clearInputError(input) {
        const existingError = input.parentElement.querySelector('.input-error');
        if (existingError) {
            existingError.remove();
        }
        input.style.borderColor = 'transparent';
    }
    
    addFocusClass(input) {
        input.parentElement.classList.add('focused');
    }
    
    removeFocusClass(input) {
        input.parentElement.classList.remove('focused');
    }
    
    showLoadingState() {
        this.submitBtn.classList.add('loading');
        this.submitBtn.textContent = 'Signing In...';
        this.submitBtn.disabled = true;
    }
    
    hideLoadingState() {
        this.submitBtn.classList.remove('loading');
        this.submitBtn.textContent = 'Sign In';
        this.submitBtn.disabled = false;
    }
    
    handleSubmit(e) {
        if (!this.validateForm()) {
            e.preventDefault();
            this.showFormError('Please correct the errors above');
            return false;
        }
        
        this.showLoadingState();
        return true;
    }
    
    showFormError(message) {
        const existingError = document.querySelector('.form-error');
        if (existingError) {
            existingError.remove();
        }
        
        const errorDiv = document.createElement('div');
        errorDiv.className = 'form-error error-message';
        errorDiv.textContent = message;
        
        this.form.parentElement.insertBefore(errorDiv, this.form);
        
        setTimeout(() => {
            if (errorDiv.parentElement) {
                errorDiv.remove();
            }
        }, 5000);
    }
}

// Initialize when DOM is loaded
document.addEventListener('DOMContentLoaded', () => {
    new LoginEnhancements();
    
    // Add CSS for additional effects
    const style = document.createElement('style');
    style.textContent = `
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .input-wrapper.focused input {
            border-color: #FFD700;
            box-shadow: 0 0 0 4px rgba(255, 215, 0, 0.1);
        }
        
        .input-wrapper input.typing {
            border-color: #FFD700;
        }
    `;
    document.head.appendChild(style);
});
