function validateForm() {
    const firstNameField = document.querySelector("#new-firstname");
    const otherNameField = document.querySelector("#new-othername");
    const lastNameField = document.querySelector("#new-lastname");
    const emailAddressField = document.querySelector("#new-email");
    const addressField = document.querySelector("#new-address");
    const phoneNumberField = document.querySelector("#new-phone");
    const maleGenderField = document.querySelector("#male-gender");
    const femaleGenderField = document.querySelector("#female-gender");
    var phoneNumber = phoneNumberField.value;

    if (firstNameField.value === "")
    {
        event.preventDefault();
        let span = document.querySelector(".first-name-field .validation-message");
        span.textContent = "First name is required";
        span.style.display = "inline";
    } else
        document.querySelector(".first-name-field .validation-message").style.display = "none";

    if (otherNameField.value === "")
    {
        event.preventDefault();
        let span = document.querySelector(".other-name-field .validation-message");
        span.textContent = "Other name is required";
        span.style.display = "inline";
    } else
        document.querySelector(".other-name-field .validation-message").style.display = "none";

    if (lastNameField.value === "")
    {
        event.preventDefault();
        let span = document.querySelector(".last-name-field .validation-message");
        span.textContent = "Last name is required";
        span.style.display = "inline";
    } else
        document.querySelector(".last-name-field .validation-message").style.display = "none";

    if (emailAddressField.value === "")
    {
        event.preventDefault();
        let span = document.querySelector(".email-address-field .validation-message");
        span.textContent = "Email address is required";
        span.style.display = "inline";
    } else
        document.querySelector(".email-address-field .validation-message").style.display = "none";

    if (addressField.value === "")
    {
        event.preventDefault();
        let span = document.querySelector(".address-field .validation-message");
        span.textContent = "Address is required";
        span.style.display = "inline";
    } else
        document.querySelector(".address-field .validation-message").style.display = "none";

    let pattern = /0([79]0|8[01])\d{8}/;
    if (phoneNumberField.value === "" || !pattern.test(phoneNumber))
    {
        event.preventDefault();
        let span = document.querySelector(".phone-number-field .validation-message");
        span.textContent = "Input a valid phone number";
        span.style.display = "inline";
    } else
        document.querySelector(".phone-number-field .validation-message").style.display = "none";

    if (!maleGenderField.checked || !femaleGenderField.checked)
    {
        event.preventDefault();
        let span = document.querySelector(".gender-field .validation-message");
        span.textContent = "Gender is required";
        span.style.display = "inline";
    } else
        document.querySelector(".gender-field .validation-message").style.display = "none";

    if (addressField.value === "")
    {
        event.preventDefault();
        let span = document.querySelector(".address-field .validation-message");
        span.textContent = "Address is required";
        span.style.display = "inline";
    } else
        document.querySelector(".gender-field .validation-message").style.display = "none";
}
