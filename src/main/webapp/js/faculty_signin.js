// Utility function to show messages
function showMessage(fieldId, message, isValid) {
    const msgElement = document.getElementById(fieldId + "Msg");
    msgElement.textContent = message;
    msgElement.style.color = isValid ? "green" : "red";
}

// Faculty ID pattern (e.g., CS101, IT001, etc.)
const facultyIdPattern = /^[A-Z]{2}\d{3}$/;

// Attach validation listeners
function setupFacultyLoginValidation() {
    const facIdInput = document.getElementById("facultyId");
    const passInput = document.getElementById("password");

    facIdInput.addEventListener("keyup", () => {
        const value = facIdInput.value.trim();
        const isValid = facultyIdPattern.test(value);
        showMessage("facultyId", isValid ? "Valid Faculty ID ✅" : "Invalid format (e.g., CS101)", isValid);
    });

    passInput.addEventListener("keyup", () => {
        const value = passInput.value.trim();
        const isValid = value.length >= 6;
        showMessage("password", isValid ? "Valid Password ✅" : "Minimum 6 characters required", isValid);
    });

    return true; // Allow form submission
}
