<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>South Korea Travel Controller</title>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <link
      href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Arizonia&display=swap"
      rel="stylesheet"
    />

    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />

    <link rel="stylesheet" href="css/bj/SKTCMain/animate.css" />

    <link rel="stylesheet" href="css/bj/SKTCMain/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/bj/SKTCMain/owl.theme.default.min.css" />
    <link rel="stylesheet" href="css/bj/SKTCMain/magnific-popup.css" />

    <link rel="stylesheet" href="css/bj/SKTCMain/bootstrap-datepicker.css" />
    <link rel="stylesheet" href="css/bj/SKTCMain/jquery.timepicker.css" />

    <link rel="stylesheet" href="css/bj/SKTCMain/flaticon.css" />
    <link rel="stylesheet" href="css/bj/SKTCMain/style.css" />

    <link rel="icon" type="image/png" href="./img/jy/sktc-favicon.png" />
    <link rel="stylesheet" href="./css/jy/recommend.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" type="text/css" href="css/jy/slick.css"/>
<link rel="stylesheet" type="text/css" href="css/jy/slick-theme.css"/>
    
  </head>
  <body>
    <nav
      class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
      id="ftco-navbar"
    >
      <div class="container">
        <a class="navbar-brand" href="index.html"
          >
          <img style="width: 30px; height: 30px;" src="./img/jy/SKTC.png">
          SKTC<span>South Travel Controller</span></a
        >
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#ftco-nav"
          aria-controls="ftco-nav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item" id="nav-home">
              <a href="NewFile.jsp" class="nav-link">HOME</a>
            </li>
            <li class="nav-item" id="nav-review">
              <a href="ReviewPageC?p=1" class="nav-link">REVIEW</a>
            </li>
            <li class="nav-item" id="nav-qna">
              <a href="QnAC?category=1" class="nav-link">QnA</a>
            </li>
            <li class="nav-item">
              <jsp:include page="${LoginPage}"></jsp:include>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->

    <div class="hero-wrap js-fullheight" style="background-image: url('img/jy/main-img1.jpg')">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center"
          data-scrollax-parent="true">
          <div class="col-md-7 ftco-animate">
            <span class="subheading">Welcome to SKTC</span>
            <h1 class="mb-4">다양한 즐길 거리가 <br>기다리는 국내 여행지</h1>
            <p class="caps">
              SKTC의 추천으로 특별한 순간을 만들어보세요.
            </p>
          </div>
        </div>
      </div>
    </div>

    <!-- 여기까지 Search Tour, Hotel -->
    <section class="ftco-section services-section">
      <div class="container">
        <div class="row d-flex">
          <jsp:include page="${recommendPage }"></jsp:include>
        </div>
      </div>
    </section>
    <!-- 여기까지 It's time to start your adventure -->

    <section class="ftco-intro ftco-section ftco-no-pt">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-12 text-center">
            <div
              class="img"
              style="background-image: url('img/jy/main-img2.jpg')"
            >
              <div class="overlay"></div>
              <h2>We Are Pacific A Travel Agency</h2>
              <p>
                We can manage your dream building A small river named Duden
                flows by their place
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <footer
      class="ftco-footer bg-bottom ftco-no-pt"
      style="background-image: url(css/bj/images/bg_3.jpg)"
    >
      <div class="container">
        <div class="row mb-5">
          <div class="col-md pt-5">
            <div class="ftco-footer-widget pt-md-5 mb-4">
              <h2 class="ftco-heading-2">About</h2>
              <p>
				"문화와 자연의 아름다움이 어우러진 여행을 경험해보세요."
			  </p>
			  <p>		
				"풍부한 역사와 현대적인 매력이 어우러진 명소를 만나보세요."
              </p>
              <ul
                class="ftco-footer-social list-unstyled float-md-left float-lft"
              >
                <li class="ftco-animate">
                  <a href="https://twitter.com/"><span class="fa fa-twitter"></span></a>
                </li>
                <li class="ftco-animate">
                  <a href="https://www.facebook.com/"><span class="fa fa-facebook"></span></a>
                </li>
                <li class="ftco-animate">
                  <a href="https://www.instagram.com/"><span class="fa fa-instagram"></span></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md pt-5 border-left">
            <div class="ftco-footer-widget pt-md-5 mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Infromation</h2>
              <div style="display: flex; gap:20px;">
              <ul class="list-unstyled">
                <li><a href="https://www.sto.or.kr/index" class="py-2 d-block">서울</a></li>
                <li><a href="https://bto.or.kr/kor/Main.do" class="py-2 d-block">부산</a></li>
                <li><a href="https://tour.daegu.go.kr/" class="py-2 d-block">대구</a></li>
                <li><a href="https://www.ito.or.kr/" class="py-2 d-block">인천</a></li>
                <li><a href="https://www.gjto.or.kr/" class="py-2 d-block">광주</a></li>
                <li><a href="http://www.djto.kr/kor/domain/domain3.html" class="py-2 d-block">대전</a></li>                                                                                                     
              </ul>
              <ul class="list-unstyled">                           
                <li><a href="http://www.cbta.or.kr/" class="py-2 d-block">충청북도</a></li>
                <li><a href="https://tour.chungnam.go.kr/html/kr/" class="py-2 d-block">충청남도</a></li>
                <li><a href="https://www.gtc.co.kr/" class="py-2 d-block">경상북도</a></li>
                <li><a href="https://gnto.or.kr/main/main.php/" class="py-2 d-block">경상남도</a></li>
                <li><a href="https://tour.jb.go.kr/index.do" class="py-2 d-block">전라북도</a></li>
                <li><a href="http://ijnto.or.kr/" class="py-2 d-block">전라남도</a></li>                                                        
               </ul>
               <ul class="list-unstyled">
                <li><a href="https://www.uto.or.kr/uto/index.do" class="py-2 d-block">울산</a></li>  
                <li><a href="https://gto.or.kr/main.php" class="py-2 d-block">경기도</a></li>
                <li><a href="http://gwto.or.kr/www/index.do" class="py-2 d-block">강원도</a></li>                 
                <li><a href="https://ijto.or.kr/korean/" class="py-2 d-block">제주도</a></li>
                <li><a href="https://knto.or.kr/index" class="py-2 d-block">대한민국</a></li>              
               </ul>
               </div>  
            </div>
          </div>
          <div class="col-md pt-5 border-left">
            <div class="ftco-footer-widget pt-md-5 mb-4" style="margin-left:40px; ">
              <h2 class="ftco-heading-2">제휴사이트</h2>
              <ul class="list-unstyled">
                <li><a href="https://www.goodchoice.kr/" class="py-2 d-block">여기어때</a></li>
                <li><a href="https://mtravel.interpark.com/home" class="py-2 d-block">인터파크</a></li>
                <li><a href="https://www.twayair.com/app/main" class="py-2 d-block">티웨이</a></li>
                <li><a href="https://www.jinair.com/booking/index" class="py-2 d-block">진에어</a></li>
                <li><a href="https://www.jejuair.net/ko/main/base/index.do" class="py-2 d-block">제주항공</a></li>
                <li><a href="https://www.lotterentacar.net/hp/kor/main/index.do" class="py-2 d-block">롯데렌트카</a></li>
                <li><a href="https://www.skcarrental.com/rent/index.do" class="py-2 d-block">SK렌트카</a></li>              
              </ul>
            </div>
          </div>
          <div class="col-md pt-5 border-left">
            <div class="ftco-footer-widget pt-md-5 mb-4" style="margin-left: 40px;">
              <h2 class="ftco-heading-2">Have a Questions?</h2>
              <div class="block-23 mb-3">
                <ul>
                  <li>
                    <span class="icon fa fa-map-marker"></span
                    ><span class="text"
                      >15, Jongno 12-gil, Jongno-gu, Seoul, Republic of Korea</span
                    >
                  </li>
                  <li>
                    <a href="#"
                      ><span class="icon fa fa-phone"></span
                      ><span class="text">+2-6901-7098</span></a
                    >
                  </li>
                  <li>
                    <a href="#"
                      ><span class="icon fa fa-paper-plane"></span
                      ><span class="text">Soldesk@domain.com</span></a
                    >
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
            <p>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              Copyright &copy;
              <script>
                document.write(new Date().getFullYear());
              </script>
              All rights reserved | This template is made with
              <i class="fa fa-heart" aria-hidden="true"></i> by
              <a href="https://colorlib.com" target="_blank">Colorlib</a>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
        </div>
      </div>
    </footer>

    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen">
      <svg class="circular" width="48px" height="48px">
        <circle
          class="path-bg"
          cx="24"
          cy="24"
          r="22"
          fill="none"
          stroke-width="4"
          stroke="#eeeeee"
        />
        <circle
          class="path"
          cx="24"
          cy="24"
          r="22"
          fill="none"
          stroke-width="4"
          stroke-miterlimit="10"
          stroke="#F96D00"
        />
      </svg>
    </div>

    <script src="js/bj/SKTCMain/jquery.min.js"></script>
    <script>
      jQuery.noConflict();
    </script>
    <script src="js/bj/SKTCMain/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/bj/SKTCMain/popper.min.js"></script>
    <script src="js/bj/SKTCMain/bootstrap.min.js"></script>
    <script src="js/bj/SKTCMain/jquery.easing.1.3.js"></script>
    <script src="js/bj/SKTCMain/jquery.waypoints.min.js"></script>
    <script src="js/bj/SKTCMain/jquery.stellar.min.js"></script>
    <script src="js/bj/SKTCMain/owl.carousel.min.js"></script>
    <script src="js/bj/SKTCMain/jquery.magnific-popup.min.js"></script>
    <script src="js/bj/SKTCMain/jquery.animateNumber.min.js"></script>
    <script src="js/bj/SKTCMain/bootstrap-datepicker.js"></script>
    <script src="js/bj/SKTCMain/scrollax.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/bj/SKTCMain/google-map.js"></script>
    <script src="js/bj/SKTCMain/main.js"></script>
  </body>
</html>
