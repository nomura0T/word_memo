<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>学習メニュー選択</title>
</head>
<body>
    <h2>学習形式を選択してください:</h2>
    <form action="selectmenu" method="post">
        <select name="menu">
            <option value="menu1">ランダム</option>
            <option value="menu2">ジャンル別</option>
            <option value="menu3">未学習のもの</option>

        </select>
        <input type="submit" value="選択">
    </form>
</body>
</html>