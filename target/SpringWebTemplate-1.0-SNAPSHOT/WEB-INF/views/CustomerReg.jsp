<%--
  Created by IntelliJ IDEA.
  User: MichaelRiley
  Date: 5/8/17
  Time: 4:42 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<html>
<head>
    <title>Customer Registration Form</title>
    <link href="resources/styles.css" rel="stylesheet" type="text/css">







</head>
<body class="CustReg" id="myCustReg">

<h1> Please fill the form to register your account!</h1>

<form name= "myform" action="/addUser" onsubmit="return validateForm()" method="post">
    <table>
        <tr>
            <td>Name:<input type="text" id="name" name="name" required></td><br>
        </tr>

        <tr>
            <td>Phone:<input type="text" id="phone" name="phone" required></td><br>
        </tr>
        <tr>
            <td>Email:<input type="email" name="email" required></td><br>
        </tr>
    </table>

    <h3>Please add your favorite drinks</h3>

    <table>
        <tr>
            <td><input type="checkbox" name="mocha">Mocha</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="darkCoffee">Dark Coffee</td>
        </tr>
    </table>
    <input type="submit" name="Add"><br>

</form>



<script>

    function validateForm () {



        var x = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
        var phoneno = document.getElementById('phone').value;
        if (x.test(phoneno)) {
            return true;
        } else {
            alert("Not a valid Phone Number 999-999-9999");
            return false;
        }
    }
</script>

</body>
</html>
