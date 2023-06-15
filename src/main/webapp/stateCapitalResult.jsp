<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="statesModel" scope="session" class="com.advjava.finalproject.StateCapital"></jsp:useBean>
<html>
<head>
    <title>State Capital Quiz Answers</title>
</head>
<body>

<%--Results for the state-capital quiz taken in stateCapital.jsp page.--%>
<%
    int index = (int) session.getAttribute("index");
    String state = statesModel.states.get(index);
    if(statesModel.stateCapitals.get(state).trim().equalsIgnoreCase(request.getParameter("capital").trim())) {
        out.println("<h4>Correct Answer</h4>");
    }
    else {
        out.println("<h4>No. The Capital of " + state + " is " + statesModel.stateCapitals.get(state) + "</h4>");
    }
%>
<a href="stateCapital.jsp">Next</a>

</body>
</html>
