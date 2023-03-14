<%--
    Document   : profile
    Created on : Mar 14, 2023, 5:25:38 AM
    Author     : jevis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <jsp:include page="WEB-INF/fragments/head-codes.jsp"/>
    </head>
    <body class="index-page">
        <!-- Navbar -->
        <jsp:include page="WEB-INF/fragments/nav-bar.jsp"/>
        <!-- End Navbar -->
        <div class="wrapper">
            <jsp:include page="WEB-INF/fragments/footer.jsp"/>
        </div>
        <!--   Core JS Files   -->
        <jsp:include page="WEB-INF/fragments/scripts.jsp"/>
        <jsp:include page="WEB-INF/fragments/buy-modal.jsp"/>
    </body>
</html>
