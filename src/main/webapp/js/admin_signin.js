// Utility function to show messages
function showMessage(fieldId, message, isValid) {
    const msgElement = document.getElementById(fieldId + "Msg");
    msgElement.textContent = message;
    msgElement.style.color = isValid ? "green" : "red";
}

// Admin ID pattern (e.g., ADM101, ADM002, etc.)
const adminIdPattern = /^ADM\d{3}$/;

// Attach validation listeners
function setupAdminLoginValidation() {
    const adminIdInput = document.getElementById("registerNumber");
    const passInput = document.getElementById("password");

    adminIdInput.addEventListener("keyup", () => {
        const value = adminIdInput.value.trim();
        const isValid = adminIdPattern.test(value);
        showMessage("registerNumber", isValid ? "Valid Admin ID ✅" : "Invalid format (e.g., ADM101)", isValid);
    });

    passInput.addEventListener("keyup", () => {
        const value = passInput.value.trim();
        const isValid = value.length >= 6;
        showMessage("password", isValid ? "Valid Password ✅" : "Minimum 6 characters required", isValid);
    });

    return true; // Allow form submission
}
