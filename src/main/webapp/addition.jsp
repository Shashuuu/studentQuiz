<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="model" scope="session" class="com.advjava.finalproject.NumberModel"></jsp:useBean>
<html>
<head>
    <title>ADDITION Quiz</title>
</head>
<body>

<h1>ADDITION QUIZ</h1>

<%--form to display addition quiz questions to students.--%>
<form action="additionResult.jsp" method="post">
    <% model.refresh(); %>
    <table>
        <% for(int i = 0; i < 10; i++){ %>
        <tr>
            <td>
                <%= model.number_one[i]%>
            </td>
            <td>
                +
            </td>
            <td><%= model.number_two[i]%>
            </td>
            <td>
                =
            </td>
            <td>
                <input name = "<%= "result" + i%>" size = 2/>
            </td>
        </tr>
        <% } %>
        <tr>
            <td colspan="2"><input type="submit" name="submit" value="Submit"></td>
            <td colspan="2"><button type="button" onclick="window.location.reload();">Refresh</button></td>
            <td><input type="reset" name="reset" value="Reset"></td>
        </tr>
    </table>
    <br>
</form>

</body>
</html>
