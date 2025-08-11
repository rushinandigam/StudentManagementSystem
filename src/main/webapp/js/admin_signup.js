// Utility: Show message below input
function showValidationMessage(elementId, message, isValid) {
    const messageElement = document.getElementById(elementId + "Msg");
    messageElement.textContent = message;
    messageElement.style.color = isValid ? "green" : "red";
}

// Regex patterns
const patterns = {
    adminId: /^ADM\d{3}$/,
    name: /^[A-Za-z\s]{3,50}$/,
    mobileNumber: /^[6-9]\d{9}$/,
    email: /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/,
    password: /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/
};

// Attach blur event to each input field
function attachBlurValidation(id, regex, errorMessage) {
    const input = document.getElementById(id);
    input.addEventListener("keyup", () => {
        const value = input.value.trim();
        const isValid = regex.test(value);
        showValidationMessage(id, isValid ? "Valid ✅" : errorMessage, isValid);
    });
}

// Confirm Password validation (on blur)
function attachConfirmPasswordBlur() {
    const confirmInput = document.getElementById("confirmPassword");
    confirmInput.addEventListener("blur", () => {
        const password = document.getElementById("password").value;
        const confirmPassword = confirmInput.value;
        const match = password === confirmPassword;
        showValidationMessage("confirmPassword", match ? "Passwords match ✅" : "Passwords do not match", match);
    });
}

// On page load, set up blur validation
window.onload = () => {
    attachBlurValidation("adminId", patterns.adminId, "Invalid format (e.g., ADM101)");
    attachBlurValidation("name", patterns.name, "Only letters & spaces, 3–50 chars");
    attachBlurValidation("mobileNumber", patterns.mobileNumber, "Enter a valid 10-digit mobile number");
    attachBlurValidation("email", patterns.email, "Invalid email format");
    attachBlurValidation("password", patterns.password, "At least 8 chars with letter, number & special char");
    attachConfirmPasswordBlur();
};

// Form submission validation
function validateAdminSignupForm() {
    const inputs = {
        adminId: document.getElementById("adminId").value.trim(),
        name: document.getElementById("name").value.trim(),
        mobileNumber: document.getElementById("mobileNumber").value.trim(),
        jobRole: document.getElementById("jobRole").value,
        email: document.getElementById("email").value.trim(),
        password: document.getElementById("password").value,
        confirmPassword: document.getElementById("confirmPassword").value
    };

    const validations = [
        { id: "adminId", valid: patterns.adminId.test(inputs.adminId), msg: "Invalid admin ID format" },
        { id: "name", valid: patterns.name.test(inputs.name), msg: "Invalid name" },
        { id: "mobileNumber", valid: patterns.mobileNumber.test(inputs.mobileNumber), msg: "Invalid mobile number" },
        { id: "email", valid: patterns.email.test(inputs.email), msg: "Invalid email" },
        { id: "password", valid: patterns.password.test(inputs.password), msg: "Weak password" },
        { id: "confirmPassword", valid: inputs.password === inputs.confirmPassword, msg: "Passwords do not match" }
    ];

    let allValid = true;

    // Check required dropdowns
    if (!inputs.jobRole) {
        alert("Please select a job role");
        allValid = false;
    }

    validations.forEach(field => {
        showValidationMessage(field.id, field.valid ? "Valid ✅" : field.msg, field.valid);
        if (!field.valid) allValid = false;
    });

    return allValid;
}
