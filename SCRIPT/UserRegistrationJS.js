function check(txtBox) {
    var errIcon = txtBox.nextElementSibling;
    var errName = errIcon.nextElementSibling;
    txt = txtBox.value;
    if (txt.length < 1) {
        txtBox.style.borderColor = "Red";
        errIcon.style.visibility = "visible";
    }
    else {
        txtBox.style.borderColor = "";
        errIcon.style.visibility = "hidden";
        errName.style.visibility = "hidden";
    }
}


function showError(errIcon) {
    var errMsg = errIcon.nextElementSibling;
    if (errMsg.style.visibility=="hidden")
        errMsg.style.visibility = "visible";
    else
        errMsg.style.visibility = "hidden";
}