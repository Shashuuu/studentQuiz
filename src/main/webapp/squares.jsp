<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="model" scope="session" class="com.advjava.finalproject.NumberModel"></jsp:useBean>
<html>
<head>
    <title>SQUARES Quiz</title>
</head>
<body>

<h1>SQUARES QUIZ</h1>

<%--form to display squares quiz questions from 1 through 10 to students.--%>
<form action="squaresResult.jsp" method="post">
    <% model.refresh(); %>
    <table>
        <% for(int i = 0; i < 10; i++){ %>
        <tr>
            <td>
                Square(<%= i %>)
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
            <td><input type="reset" name="reset" value="Reset"></td>
        </tr>
    </table>
    <br>
</form>

</body>
</html>
