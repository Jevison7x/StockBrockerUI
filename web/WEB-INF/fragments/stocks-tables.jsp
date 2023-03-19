<%--
    Document   : stocks-tables
    Created on : Mar 12, 2023, 9:02:00 AM
    Author     : Praise
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="padding-left: 30px; padding-right: 30px">
    <h1 class="align-content">HOT STOCKS</h1>
    <table class="stock" id="stockTable">
        <thead>
            <tr>
                <th style="width: 200px;">Company Name</th>
                <th>Logo</th>
                <th>Company Symbol</th>
                <th>Share Price</th>
                <th>Number of Shares</th>
                <th>Currency Name</th>
                <th>Currency</th>
                <th style="width: 200px;">Transaction</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="companyStock" items="${companyStocks}">
            <jsp:useBean id="companyStock" class="com.bizblock.library.company.CompanyStock"/>
            <tr>
                <td>${companyStock.name}</td>
                <td class="logo-column"><img src="${companyStock.logo}" class="tableImage" style="height: 20px"></td>
                <td>${companyStock.symbol}</td>
                <td style="text-align: right;">${companyStock.sharePrice}</td>
                <td style="text-align: right;">${companyStock.numberOfShares}</td>
                <td>${companyStock.currencyName}</td>
                <td>${companyStock.currency}</td>
                <td>
                    <button type="button" class="btn btn-sm btn-success buy"
                            data-order-id="${companyStock.symbol}"
                            data-order-currency="${companyStock.currencyName}"
                            data-order-share-price="${companyStock.sharePrice}"
                            data-order-company-name="${companyStock.name}">
                        <i class="fas fa-arrow-circle-down"></i> Buy Now
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <jsp:include page="/WEB-INF/fragments/buy-modal.jsp"/>
</div>
