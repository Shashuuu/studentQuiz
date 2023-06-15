<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="statesModel" scope="session" class="com.advjava.finalproject.StateCapital"></jsp:useBean>
<jsp:useBean id="rand" scope="session" class="java.util.Random"></jsp:useBean>
<html>
<head>
    <title>STATE CAPITAL Quiz</title>
</head>
<body>
<h1>STATE CAPITAL QUIZ</h1>

<%--java code to get data from database that is accessed through the java class StateCapital into the jsp page.--%>
<%
    try {
        statesModel.getData();
    } catch (ClassNotFoundException | SQLException e) {
        throw new RuntimeException(e);
    }
    int index = rand.nextInt(0, statesModel.states.size());
    session.setAttribute("index", index);
%>

<%--form to display State-Capital quiz questions to students.--%>
<form action="stateCapitalResult.jsp" method="post">
    <table>
        <tr>
            <td>What is the Capital of <%= statesModel.states.get(index)%>?</td>
            <td><input type="text" name="capital" placeholder="Capital"></td>
            <td><input type="submit" value="Submit" name="submit"></td>
        </tr>
    </table>
</form>

</body>
</html>
