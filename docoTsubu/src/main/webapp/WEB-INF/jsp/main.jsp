<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%//<%@ page import = "model.User,model.Mutter,java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
//セッションスコープに保存されたユーザー情報を取得
//User loginUser = (User)session.getAttribute("loginUser");

//アプリケーションスコープに保存されたつぶやきリストを取得
//List<Mutter> mutterList = (List<Mutter>)application.getAttribute("mutterList");

//リクエストスコープに保存されたエラーメッセージを取得
String errorMsg = (String) request.getAttribute("errorMsg");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>

<%//CSSマテリアルデザインを導入 %>
<link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.indigo-pink.min.css">
<script src="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">

</head>
<body>

<%//マテリアルデザインヘッダー %>
<div class="mdl-layout mdl-js-layout mdl-layout--overlay-drawer-button">

    <header class="mdl-layout__header">
        <div class="mdl-layout-icon"></div>
        <div class="mdl-layout__header-row">
            <span class="mdl-layout-title">どこつぶメイン</span>
            <div class="mdl-layout-spacer"></div>
           <%/* <nav class="mdl-navigation">
                <a class="mdl-navigation__link" href="#">TOP</a>
                <a class="mdl-navigation__link" href="#">つぶやき</a>
                <a class="mdl-navigation__link" href="#">設定</a>
            </nav>
            */ %>
        </div>
    </header>
    
    
    <div class="mdl-layout__drawer">
        <span class="mdl-layout-title">コンテンツ</span>
        <nav class="mdl-navigation">
            <a class="mdl-navigation__link" href="#">TOP</a>
            <a class="mdl-navigation__link" href="#">つぶやき</a>
        </nav>
    </div>



<span class="mdl-list__item-primary-content">
<h4>
    <i class="material-icons mdl-list__item-icon">person</i>
    <c:out value="${loginUser.name }"/>さん、ログイン中
</h4>

</span>

<a href="/docoTsubu/Logout">ログアウト</a>


<a href="/docoTsubu/Main">更新</a>



<form action="/docoTsubu/Main" method = "post">
<input class="mdl-textfield" type ="text" name="text">

    <!-- Raised button with ripple -->
	<button type = "submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
	つぶやく
	</button><br>
</form>
<c:if test="${not empty errorMsg}" >
<p>${errorMsg}</p>
</c:if>



<c:forEach var = "mutter" items="${mutterList}">
<p><c:out value="${mutter.userName}"/>:
	<c:out value = "${mutter.text}"/></p>
</c:forEach>

</div>   
</body>
</html>