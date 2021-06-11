<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <span class="mdl-layout-title">どこつぶログアウト</span>
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
        </nav>
    </div>

<h4>ログアウトしました</h4>
<a href="/docoTsubu">トップへ</a>

</body>
</html>