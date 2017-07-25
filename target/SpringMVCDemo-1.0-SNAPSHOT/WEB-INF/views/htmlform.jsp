<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--<script type="text/javascript" src="/resources/style/validate.js" ></script>--%>
    <link rel="stylesheet" href="resources/style/style.css">
    <script>
        function validate() {
            var firstName = document.forms["form"]["f_name"].value;
            var lastName = document.forms["form"]["l_name"].value;
            var email = document.forms["form"]["e_mail"].value;
            var phoneNumber = document.forms["form"]["p_number"].value;
            var password = document.forms["form"]["pass_word"].value;
            if (isNaN(phoneNumber)) {
                alert("Only enter integers in the phone number box");
                return false;
            }
            if (firstName == "" || lastName == "" || email == "" || phoneNumber == "" || password == "") {
                alert("All lines need to be filled");
                return false;
            }
        }
    </script>
</head>
<body>
<h1>Plese fill the form to register!</h1>
<form name ="form" method="post" action="/success" onsubmit= "return validate()">
    First Name: <input type="text" name="f_name">
    <br>
    Last Name: <input type="text" name="l_name">
    <br>
    Email: <input type="text" name="e_mail">
    <br>
    Phone Number: <input type="text" name="p_number">
    <br>
    Password: <input type="password" name="pass_word">
    <br>
    <input type="submit" name="Register">
</form>
</body>
</html>