<%--
  Created by IntelliJ IDEA.
  User: MichaelRiley
  Date: 5/8/17
  Time: 1:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="/resources/styles.css" rel="stylesheet" type="text/css">
    <title>Welcome Coffee Shop</title>
    <style>
        a{
            color: white;
        }
        img{
            position: absolute;
            top: 0; bottom:0; left: 0; right:0;
            margin: auto;
            height: 250px;
            width: 15%;
        }
    </style>


</head>
<body class="homepage" id="myhomePG">

${openpage}


<div>
    <a href="/CustomerReg">Customer Registration</a>
</div>

<div id=homeimage>

    <a href="/coffeestore"><img id="homesign" src="/resources/rileyscoffee2.jpg"></a>
</div>




</body>


</html>
