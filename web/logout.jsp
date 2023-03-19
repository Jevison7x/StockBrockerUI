<%--
    Document   : logout
    Created on : Mar 19, 2023, 2:40:09 AM
    Author     : Praise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            document.addEventListener("DOMContentLoaded", () => {
                if(localStorage.getItem("user") !== null){
                    localStorage.removeItem("user");
                    localStorage.removeItem("token");
                }
                location.href = "/login";
            });
        </script>
    </head>
    <body>
        <h1>Logging out...</h1>
    </body>
</html>
