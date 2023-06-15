<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id = "model" scope="session"
             class = "com.advjava.finalproject.NumberModel">
</jsp:useBean>

<html>
<head>
  <title>
    Squares Quiz Answers
  </title>
</head>
<body>
<h1>Squares Quiz ANSWERS</h1><br>

<%--table to display the results for the squares quiz taken in squares.jsp page--%>
<table>
  <% int correctCount = 0;
    for (int i = 0; i < 10; i++){
      String s = request.getParameter("result" + i);
      int result;
      try{
        result = Integer.parseInt(s);
      }
      catch (Exception ex){
        result = 0;
      }%>
  <tr>
    <td>Square(<%= i %>)</td><td> = </td>
    <td><%= result %>   </td>

    <td>
      <% if (result != i * i || Objects.equals(s, "")){ %>
      Wrong
      <% } else {
      correctCount++; %>
      Correct
      <% } %>
    </td>
  </tr>
  <% } %>

</table>
<%
  if(correctCount == 10) { %>
<img src="lib/trophy.jpg" width="300" height="300">
<% }
%>
<br>
The total correct count is <%= correctCount %>
</body>
</html>