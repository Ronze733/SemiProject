<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link rel="icon" type="image/png" href="./img/jy/sktc-favicon.png" />
    <link rel="stylesheet" href="./css/reset.css" />
    <link rel="stylesheet" href="./css/index.css" />
    <link rel="stylesheet" href="./css/jm/event.css" />
    <link rel="stylesheet" href="./css/jh/review.css" />
    <link rel="stylesheet" href="./css/jy/recommend.css" />
    
    <link rel="stylesheet" href="./css/sh/QnA.css" />
    <title>South Korea Travel Controller</title>
  </head>
  <body>
    <div class="Container">
      <div class="main-container">
        <div class="main-header">
          <div class="main-header-logo" onclick="location.href='HC'">
            <div>
              <img alt="" src="./img/jy/SKTC.png" />
            </div>
            <div>SKTC</div>
          </div>
          <div class="main-header-menus">
            <div class="main-header-menu" onclick="location.href='ReviewC'">
              여행 후기
            </div>
            <div class="main-header-menu" onclick="location.href='QnAC'">
              고객 게시판
            </div>
          </div>
          <div class="main-header-login">
            <div><jsp:include page="${LoginPage}"></jsp:include></div>
          </div>
        </div>
        <div>
        	<jsp:include page="${contentPage}"></jsp:include>
        	<input type="hidden" id="main-header-contentPage" value="${contentPage }">
        </div>
        <script src="./js/index.js"></script>
        <div class="main-footer">
          <div class="main-footer-box">
            <div>
              <img alt="" src="./img/jy/SKTC.png" />
            </div>
            <div>© 2023 South Korea Travel Controller. All rights reserved</div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
