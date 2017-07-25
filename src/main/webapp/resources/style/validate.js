function  validate() {
    var firstName = document.forms["form"]["f_name"].value;
    var lastName = document.forms["form"]["l_name"].value;
    var email = document.forms["form"]["email"].value;
    var phoneNumber = document.forms["form"]["p_number"].value;
    var password = document.forms["form"]["password"].value;
    if (isNaN(phoneNumber)) {
        alert("Only enter integers in the phone number box");
        return false;
    }
    if (firstName == "" || lastName == "" || email == "" || phoneNumber == "" || password == "") {
        alert("All lines need to be filled");
        return false;
    }
}
