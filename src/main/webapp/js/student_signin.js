// Utility function to show messages
function showMessage(fieldId, message, isValid) {
    const msgElement = document.getElementById(fieldId + "Msg");
    msgElement.textContent = message;
    msgElement.style.color = isValid ? "green" : "red";
}

// Register number pattern (case-insensitive with alphanumeric ending)
const regNoPattern = /^\d{2}[kK]6(1[aA]|[kK]6|5[aA])12(\d{2}|[aA]\d)$/;

// Attach validation listeners
function setupLoginValidation() {
    const regInput = document.getElementById("registerNumber");
    const passInput = document.getElementById("password");

    regInput.addEventListener("keyup", () => {
        const value = regInput.value.trim();
        const isValid = regNoPattern.test(value);
        showMessage("registerNumber", isValid ? "Valid Register Number ✅" : "Invalid format", isValid);
    });

    passInput.addEventListener("keyup", () => {
        const value = passInput.value.trim();
        const isValid = value.length >= 6;
        showMessage("password", isValid ? "Valid Password ✅" : "Minimum 6 characters required", isValid);
    });
}
