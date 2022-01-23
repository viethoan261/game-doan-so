<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cybersoft.javabackend.gamedoanso.util.UrlConst"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
  <head>
    <title>Game Đoán Số</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
      <div class="container h-100 d-flex justify-content-center">
          <div class="row h-100 justify-content-center align-content-center d-flex">
            <form class="col-12 mt-5" action="<%=request.getContextPath() + UrlConst.GAME_PLAY %>" method="post">
        	  <input type="text" name="recordId" value="${record.id}" hidden/>
              <div class="form-group text-center">
                <label class="text text-success" for="tryNumber">${message}</label>
              </div>
              <c:if test="${!record.isFinished}">
	              <div class="form-group text-center">
	                <label class="text-center text-danger">Đáp án chính xác là <b>${record.number}</b></label>
	              </div>
              </c:if>
              
              <div class="form-group text-center">
                <label class="text-center text-warning">Số lần đã đoán <b>${record.point}</b></label>
              </div>
              <div class="form-group text-center">
                <label for="tryNumber">Nhập số muốn đoán</label>
                <input ${record.isFinished ? "disabled": ""} required type="text" class="form-control" name="tryNumber" id="tryNumber" placeholder="1 - 1000">
              </div>
              <button ${record.isFinished ? "disabled": ""} type="submit" class="btn btn-primary">Đoán số!</button>
              <a href = "<%=request.getContextPath() + UrlConst.GAME_RANKING %>" class="btn btn-primary">Xếp hạng</a>
            </form>
          </div>
      </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>