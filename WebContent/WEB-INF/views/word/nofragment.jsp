<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Word</title>
</head>
<body>
    <h1>Word: ${word.name}</h1>
    <form action="MeaningServlet" method="post">
        <input type="hidden" name="id" value="${word.id}">
        <input type="submit" value="答えを表示">
    </form>
    <%
        String mean = (String) request.getAttribute("mean");
        if (mean != null) {
    %>
    <p>Mean: <%= mean %></p>
    <%
        }
    %>
    <form action="CheckboxServlet" method="post">
        <input type="hidden" name="id" value="${word.id}">
        <input type="checkbox" name="fragment" value="1"> Check to mark as complete<br>
        <input type="submit" value="覚えた！">
    </form>
  <form action="NoFragmentServlet" method="get">
    <input type="submit" value="次へ">
</form>
</body>
</html>