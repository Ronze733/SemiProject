<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/jy/slick.css"/>
<link rel="stylesheet" type="text/css" href="css/jy/slick-theme.css"/>
<style type="text/css">
    .slider {
        width: 900px;
        margin: 100px auto; 
    }

    .slick-slide {
      margin: 0px 20px;
    }

    .slick-slide img {
      width: 100%;
    }

    .slick-prev:before,
    .slick-next:before {
      color: #dee2e6;
    }


    .slick-slide {
      transition: all ease-in-out .3s;
      opacity: .2;
    }
    
    .slick-active {
      opacity: .5;
    }

    .slick-current {
      opacity: 1;
    }
  </style>


</head>
<body>
<section class="regular slider">
    <div class="slide">
      <img src="http://placehold.it/350x300?text=1">
    </div>
    <div class="slide">
      <img src="http://placehold.it/350x300?text=2">
    </div>
    <div class="slide">
      <img src="http://placehold.it/350x300?text=3">
    </div>
    <div class="slide">
      <img src="http://placehold.it/350x300?text=4">
    </div>
    <div class="slide">
      <img src="http://placehold.it/350x300?text=5">
    </div>
    <div class="slide">
      <img src="http://placehold.it/350x300?text=6">
    </div>
  </section>

<script src="js/jy/jquery-2.2.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
	let $jQ = jQuery.noConflict();
</script>
<script type="text/javascript" src="js/jy/slick.js"></script>
<script type="text/javascript">
$jQ(document).on('ready',function(){
	$jQ(".regular").slick({
        slide: 'div',
		dots: false,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 4000,
      });
});
</script>

</body>
</html>