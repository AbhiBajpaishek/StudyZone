function hideShowIconError(isValid, txtBox) {
    var errIcon = txtBox.nextElementSibling;
    var errName = errIcon.nextElementSibling;
    if (isValid) {
        txtBox.style.borderColor = "Red";
        errIcon.style.visibility = "visible";
    }
    else {
        txtBox.style.borderColor = "";
        errIcon.style.visibility = "hidden";
        errName.style.visibility = "hidden";
    }
}

function checkName(txtBoxName) {
    txt = txtBoxName.value;
    hideShowIconError(txt.length < 1,txtBoxName);
}

function checkEmail(txtBoxEmail) {
    var patt = new RegExp("\A(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\Z");
    var isEmail = patt.test(txtBoxEmail);
    var errIcon = txtBoxEmail.nextElementSibling;
    hideShowIconError(isEmail || txtBoxEmail.value.length<1, txtBoxEmail);
}

function showError(errIcon) {
    var errMsg = errIcon.nextElementSibling;
    if (errMsg.style.visibility === "hidden")
        errMsg.style.visibility = "visible";
    else
        errMsg.style.visibility = "hidden";
}

