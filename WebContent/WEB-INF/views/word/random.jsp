<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>ランダムなレコード表示</title>
</head>
<body>
    <h2>ランダムなレコード</h2>
    <c:if test="${not empty randomRecord}">
        <p>単語: ${randomRecord.name}</p>
        
              <!-- 意味を表示する部分 -->
        <p>意味: ${meaning}</p>
        
        <form action="meaning" method="post">
            <input type="hidden" name="id" value="${randomRecord.id}">
            <input type="submit" value="意味を表示">
        </form>
     
     
    <form action="CheckboxServlet" method="post">
    <input type="hidden" name="id" value="${randomRecord.id}">
    <%-- データベースのfragmentの値が1の場合、チェックボックスをチェック済みにする --%>
    <input type="checkbox" name="fragment" value="1" ${randomRecord.fragment == 1 ? 'checked' : ''}> Check to mark as complete<br>
    <input type="hidden" name="fragment" value="0">
    <input type="submit" value="覚えた！">
</form>

     
   <form action="checkbox" method="post">
    <input type="hidden" name="id" value="${randomRecord.id}">
    <input type="checkbox" name="fragment" value="1" ${fragment == 1 ? 'checked' : ''}> Check to mark as complete<br>
    <input type="hidden" name="fragmentHidden" value="0">
    <input type="submit" value="覚えた！">
</form>
   
 
        
         <form action="nextRecord" method="post">
        <input type="hidden" name="id" value="${randomRecord.id}">
        <input type="submit" value="次へ">
    </form>
    </c:if>
    <c:if test="${empty randomRecord}">
        <p>ランダムなレコードが見つかりませんでした。</p>
    </c:if>
</body>
</html>
