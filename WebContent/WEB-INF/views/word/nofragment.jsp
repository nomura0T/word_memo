<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>Word</title>

</head>
<body>
    <h2>ランダムなレコード</h2>
    <c:if test="${not empty nofragment}">
        <p>単語: ${nofragment.name}</p>

              <!-- 意味を表示する部分 -->
        <p>意味: ${meaning}</p>

        <form action="meaning_n" method="post">
            <input type="hidden" name="id" value="${nofragment.id}">
            <input type="submit" value="意味を表示">
        </form>

        <form action="checkbox_n" method="post">
        <input type="hidden" name="id" value="${nofragment.id}">
       <input type="checkbox" name="fragment" value="1" ${nofragmnet.fragment == 1 ? 'checked' : ''}> 学習済み<br>
            <input type="hidden" name="fragment" value="0">
            <input type="submit" value="覚えた！">
        </form>


     <form action="nofragment" method="get">
        <input type="submit" value="次へ">
    </form>

    </c:if>
    <c:if test="${empty nofragmnet}">
        <p>全単語を閲覧しました。<br><a href="${pageContext.request.contextPath}/home">ホームへ戻る</a></p>

    </c:if>

    <p><a href="${pageContext.request.contextPath}/home">ホームへ戻る</a></p>
</body>
</html>