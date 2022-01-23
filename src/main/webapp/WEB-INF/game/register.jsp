<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cybersoft.javabackend.gamedoanso.util.UrlConst"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<div class="container">
	    <h1 class="text-primary text-center">Game Đoán Số</h1>
	    <form class="w-50" action="<%=request.getContextPath() + UrlConst.PLAYER_REGISTER %>" method="post" class="form-group">
	     
	       <label for="playerName">Your name</label>
	      <input type="text" class="form-control" name="playerName" id="playerName" placeholder="Enter your name" required = "required" 
	      value='${playerName == null ? "" : playerName}'>
	      <br>
	     
	      <label for="username">Username</label>
	      <input type="text" class="form-control" name="username" id="username" placeholder="Enter username" required = "required"
	      value='${username == null ? "" : username}'>
	      <label class="text-danger"><b>${message == null ? "" : message }</b></label>
	      <br>
	      <label for="password">Password</label>
	      <input type="password" class="form-control" name="password" id="password"
	        placeholder="New account will be created if username isn't exists" required = "required">
	        <br>
	      <label for="rPassword">Repeat Password:</label>
	      <input type="password" class="form-control" name="rPassword" id="rPassword" required = "required">
	      <label class="text-danger"><b>${message2 == null ? "" : message2 }</b></label>
	      
	      <input class="btn btn-primary mt-2" type="submit" value="Đăng ký" / required = "required">
	      <a class="btn btn-primary mt-2" href="<%=request.getContextPath() + UrlConst.PLAYER_LOGIN%>" >Hủy đăng ký</a>
	    </form>
	</div>
</body>
</html>