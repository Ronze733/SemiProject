<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<div class="recommend-container">
		<div class="recommend-banner">
			<img id="recommend-banner-img" alt="" src="./img/jy/main-img.png">
		</div>
		<div class="recommend-banner-copy">너만 오면 GO!</div>
		<div class="recommend-container">
			<div class="recommend-search">검색
				<form action="RecommendC" method="post">
					<div class="recommend-search-themes">테마
						<div><input type="checkbox" name="themes" value="가족">가족</div>
						<div><input type="checkbox" name="themes" value="친구">친구</div>
						<div><input type="checkbox" name="themes" value="연인">연인</div>
					</div>
					<div class="recommend-search-places">장소
						<div><input type="checkbox" name="places" value="산">산</div>
						<div><input type="checkbox" name="places" value="바다">바다</div>
						<div><input type="checkbox" name="places" value="계곡">계곡</div>
					</div>
					<div class="recommend-search-locations">지역
						<div><input type="checkbox" name="locations" value="서울">서울</div>
						<div><input type="checkbox" name="locations" value="인천">인천</div>
						<div><input type="checkbox" name="locations" value="대전">대전</div>
						<div><input type="checkbox" name="locations" value="대구">대구</div>
						<div><input type="checkbox" name="locations" value="광주">광주</div>
						<div><input type="checkbox" name="locations" value="울산">울산</div>
						<div><input type="checkbox" name="locations" value="부산">부산</div>
						<div><input type="checkbox" name="locations" value="경기도">경기도</div>
						<div><input type="checkbox" name="locations" value="강원도">강원도</div>
						<div><input type="checkbox" name="locations" value="충청도">충청도</div>
						<div><input type="checkbox" name="locations" value="전라도">전라도</div>
						<div><input type="checkbox" name="locations" value="경상도">경상도</div>
						<div><input type="checkbox" name="locations" value="제주도">제주도</div>
					</div>	
					<div><button>검색</button></div>
				</form>		
			</div>
			<div class="recommend-travel-places">추천여행지 <br>
				<c:forEach var="p" items="${recommendPlaces}">
					${p.place_name} <br>
				</c:forEach>
				<div class="recommend-travel-locations">여행지
					<div class="recommend-travel-location">
						<div><img style="max-width: 100px;" alt="" src="./img/jy/IFCmall.jpg"></div>
						<div>IFC몰</div>
					</div>
					<div class="recommend-travel-location">
						<div><img style="max-width: 100px;" alt="" src="./img/jy/IFCmall.jpg"></div>
						<div>IFC몰</div>
					</div>
					<div class="recommend-travel-location">
						<div><img style="max-width: 100px;" alt="" src="./img/jy/IFCmall.jpg"></div>
						<div>IFC몰</div>
					</div>
				</div>
			</div>
		</div>
	</div>
