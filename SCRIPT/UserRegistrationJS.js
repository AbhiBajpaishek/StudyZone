function hideShowIconError(isValid, txtBox) {
    var errIcon = txtBox.nextElementSibling;
    var errName = errIcon.nextElementSibling;
    if (isValid) {
        txtBox.style.borderColor = "";
        errIcon.style.visibility = "hidden";
        errName.style.visibility = "hidden";
    }
    else {
        txtBox.style.borderColor = "Red";
        errIcon.style.visibility = "visible";
        errIcon.focus();
    }
}

function checkName(txtBoxName) {
    txt = txtBoxName.value;
    hideShowIconError(txt.length > 0,txtBoxName);
}

function checkEmail(txtBoxEmail) {
    var patt = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$/;
    var txt = txtBoxEmail.value;
    var isEmail = patt.test(txt);
    hideShowIconError(isEmail && txt.length>1, txtBoxEmail);
}

function checkOrganisation(txtBoxOrg) {
    txt = txtBoxOrg.value;
    hideShowIconError(txt.length > 0, txtBoxOrg);
}

function showError(errIcon) {
    var errMsg = errIcon.nextElementSibling;
    if (errMsg.style.visibility === "hidden")
        errMsg.style.visibility = "visible";
    else
        errMsg.style.visibility = "hidden";
}

