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
      opacity: 1;
    }
    
    .slick-active {
      opacity: 1;
    }

    .slick-current {
      opacity: 1;
    }
  </style>


</head>
<body>
<section class="regular slider">
    <div class="slide">
    	<a href="https://korean.visitkorea.or.kr/detail/event_detail.do?cotid=f564d33c-e3d0-4dad-9de4-7e7b7430d81a">
	    	<img src="https://travelmonth.or.kr/uploads/event/1f68bbd3-b32b-403a-8f14-6fbac58ff0ba.png">
    	</a>
    </div>
    <div class="slide">
    	<a href="https://korean.visitkorea.or.kr/detail/event_detail.do?cotid=c4392e44-80a2-48c4-81a0-978e19166507">
	    	<img src="https://travelmonth.or.kr/uploads/event/f085878b-c47e-47bc-81c1-d4d99890897d.png">
    	</a>
    </div>
    <div class="slide">
    	<a href="https://korean.visitkorea.or.kr/detail/event_detail.do?cotid=c21e6a81-89f9-40be-906e-72abefe9d741">
	    	<img src="https://travelmonth.or.kr/uploads/event/7bad1fbf-72c4-4b1f-9d31-faade6b41f41.jpg">
    	</a>
    </div>
    <div class="slide">
    	<a href="https://korean.visitkorea.or.kr/detail/event_detail.do?cotid=582bc558-c165-4eb7-af3d-223295ff617b">
	    	<img src="https://travelmonth.or.kr/uploads/event/9551d500-015b-4a25-814e-b5825418f046.jpg">
    	</a>
    </div>
    <div class="slide">
    	<a href="https://events.interpark.com/exhibition?exhibitionCode=230125011">
    		<img src="https://openimage.interpark.com/dia/images/87/11/230125011/96bb3694c08b4682a8f25402b9874fa9.jpg">
    	</a>
    </div>
    <div class="slide">
    	<a href="https://www.lotterentacar.net/hp/kor/carLife/eventDetail.do?pageIndex=1&contSeq=580&listType=ongoing">
    		<img src="https://www.lotterentacar.net/atch/getImage.do?atchFileId=FILE0000000002515237">
    	</a>
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