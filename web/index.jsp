<%--
    Document   : index
    Created on : Mar 11, 2023, 11:17:53 PM
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
            <jsp:include page="WEB-INF/fragments/banner-hero.jsp"/>
            <jsp:include page="WEB-INF/fragments/stocks-tables.jsp"/>
            <jsp:include page="WEB-INF/fragments/footer.jsp"/>
        </div>
        <!--   Core JS Files   -->
        <jsp:include page="WEB-INF/fragments/scripts.jsp"/>
        <jsp:include page="WEB-INF/fragments/buy-modal.jsp"/>
    </body> 
</html>