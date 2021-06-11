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

</head>

<body>

<%//マテリアルデザインヘッダー %>
<div class="mdl-layout mdl-js-layout mdl-layout--overlay-drawer-button">

    <header class="mdl-layout__header">
        <div class="mdl-layout-icon"></div>
        <div class="mdl-layout__header-row">
            <span class="mdl-layout-title">どこつぶ</span>
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





<%//Form %>
<form action = "/docoTsubu/Login" method ="post">
<div style="text-align: center">

	 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label ">
        <label for="input_text" class="mdl-textfield__label" >User name</label>
        <input type="text" class="mdl-textfield__input" id="input_text" name = "name" />
    </div><br>


    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
        <label for="input_password" class="mdl-textfield__label" >Password with verification</label>
        <input type="password" pattern="[0-9]*" class="mdl-textfield__input" id="input_password" name = "pass"/>
        <span class="mdl-textfield__error">Digits only</span>
    </div><br>
    	
    <!-- Raised button with ripple -->
	<button type = "submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
	ログイン
	</button><br>

</div>
</form>


</div>
</body>
</html>