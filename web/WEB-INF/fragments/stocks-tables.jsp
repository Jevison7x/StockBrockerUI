<%--
    Document   : stocks-tables
    Created on : Mar 12, 2023, 9:02:00 AM
    Author     : KUFRE
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<div style="padding-left: 30px; padding-right: 30px">
    <h1 class="align-content">HOT STOCKS</h1>
    <table class="stock" id="stockTable">
        <thead>
            <tr>
                <th>Company Name</th>
                <th>Logo</th>
                <th>Stock Price</th>
                <th>Currency Name</th>
                <th>Currency</th>
                <th>Number of Shares</th>
                <th>Transaction</th>
            </tr>
        </thead>
    </table>
    <jsp:include page="/WEB-INF/fragments/buy-modal.jsp"/>
</div>
