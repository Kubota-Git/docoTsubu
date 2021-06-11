<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="model.User" %>
<%
//セッションスコープからユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこぶつ</title>

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
            <span class="mdl-layout-title">どこぶつログイン</span>
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
            <a class="mdl-navigation__link" href="/docoTsubu/">TOP</a>
            <a class="mdl-navigation__link" href="/docoTsubu/Main">つぶやき</a>
        </nav>
    </div>

<% if(loginUser != null){ %>
<h4>
ログインに成功しました。
</h4>

<p>ようこそ<%=loginUser.getName() %>さん</p>
<a href ="/docoTsubu/Main">つぶやき投稿・閲覧へ</a>

<%} else{%>
<h4>
<p>ログインに失敗しました。</p>
</h4>
<a href ="/docoTsubu/">TOPへ</a>

<% } %>
</div>
</body>
</html>