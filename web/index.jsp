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
        <title>Stock Broker</title>
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
        <jsp:include page="WEB-INF/fragments/buy-modal.jsp"/>
        <!--   Core JS Files   -->
        <jsp:include page="WEB-INF/fragments/scripts.jsp"/>
        <script src="./js/index.js"></script>
        <script>
            const currencySelector = document.getElementById('currency-selector');

            fetch('https://api.apilayer.com/exchangerates_data/latest?apikey=7Ct4899ogYI4n73hCpQ0RaNEgDTbzILC')
                    .then(response => response.json())
                    .then(data => {
                        // Check if rates property exists in data object
                        if(!data.rates){
                            throw new Error('Rates not available');
                        }

                        // Extract currency codes from data
                        const currencies = Object.keys(data.rates);

                        // Populate select field with currency options
                        currencies.forEach(currency => {
                            const option = document.createElement('option');
                            option.value = currency;
                            option.text = currency;
                            currencySelector.add(option);
                        });
                    })
                    .catch(error => console.error(error));
        </script>
    </body>
</html>