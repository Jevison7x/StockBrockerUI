<%--
    Document   : stocks-tables
    Created on : Mar 12, 2023, 9:02:00 AM
    Author     : KUFRE
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@page import="com.mashape.unirest.http.HttpResponse"%>
<%@page import="com.mashape.unirest.http.JsonNode"%>
<%@page import="com.mashape.unirest.http.Unirest"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%
    HttpResponse<JsonNode> jsonResponse = Unirest.get("http://stockbroker.bizblock.com.ng/company-service/fetch-companies").asJson();
    JsonNode jsonNode = jsonResponse.getBody();
    JSONObject jsonObject = jsonNode.getObject();
    JSONArray companiesArray = jsonObject.getJSONArray("companies");
%>
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
<%
    for(int i = 0; i < companiesArray.length(); i++)
    {
        JSONObject company = companiesArray.getJSONObject(i);
%>
            <tr>
                <td><%=company.getString("name")%></td>
                <td><img src="<%=company.getString("logo")%>" class="tableImage"  style="height: 20px"></td>
                <td><%=company.getString("symbol")%></td>
                <td style="text-align: right;"><%=company.getDouble("sharePrice")%></td>
                <td style="text-align: right;"><%=company.getInt("numberOfShares")%></td>
                <td><%=company.getString("currencyName")%></td>
                <td><%=company.getString("currency")%></td>
                <td>
                    <button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#buy-stocks-modal">
                        Buy Now
                    </button>
                    <button type="button" class="btn btn-sm btn-warning" data-toggle="modal" data-target="#buy-stocks-modal">
                        Sell Now
                    </button>
                </td>
            </tr>
<%
    }
%>
        </tbody>
    </table>
    <jsp:include page="/WEB-INF/fragments/buy-modal.jsp"/>
</div>
