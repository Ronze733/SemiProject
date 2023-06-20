<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous"></script>
<div class="recommend-container">
	<div class="recommend-banner">
		<img id="recommend-banner-img" alt="" src="./img/jy/main-img.png">
		<div class="recommend-banner-copy">너만 오면 GO!</div>
	</div>
	<div class="recommend-container">
		<div class="recommend-search" style="display: flex;">
			<div id="recommend-search-menus">
				검색
					<div class="recommend-search-themes">
						테마
						<div>
							<label>
								<input class="recommend-themes" type="checkbox" name="themes" value="가족">가족
							</label>
						</div>
						<div>
							<label>
								<input class="recommend-themes" type="checkbox" name="themes" value="친구">친구
							</label> 
						</div>
						<div>
							<label>
								<input class="recommend-themes" type="checkbox" name="themes" value="연인">연인
							</label> 
						</div>
					</div>
					<div class="recommend-search-places">
						장소
						<div>
							<label>
								<input class="recommend-places" type="checkbox" name="places" value="산">산
							</label>	
						</div>
						<div>
							<label>
								<input class="recommend-places" type="checkbox" name="places" value="바다">바다
							</label> 						
						</div>
						<div>
							<label>
								<input class="recommend-places" type="checkbox" name="places" value="계곡">계곡
							</label> 
						</div>
					</div>
					<div class="recommend-search-locations">
						지역
						<div>
							<label>
								<input class="recommend-locations" type="checkbox" name="locations" value="서울">서울
							</label>
						</div>
						<div>
							<label>
								<input class="recommend-locations" type="checkbox" name="locations" value="인천">인천
							</label> 
						</div>
						<div>
							<label>
								<input class="recommend-locations" type="checkbox" name="locations" value="대전">대전
							</label> 
						</div>
						<div>
							<label>
								<input class="recommend-locations" type="checkbox" name="locations" value="대구">대구
							</label> 
						</div>
						<div>
							<label>
								<input class="recommend-locations" type="checkbox" name="locations" value="광주">광주
							</label> 
						</div>
						<div>
							<label>
								<input class="recommend-locations" type="checkbox" name="locations" value="울산">울산
							</label> 
						</div>
						<div>
							<label>
								<input class="recommend-locations" type="checkbox" name="locations" value="부산">부산
							</label> 
						</div>
						<div>
							<label>
								<input class="recommend-locations" type="checkbox" name="locations" value="경기도">경기도
							</label> 
						</div>
						<div>
							<label>
								<input class="recommend-locations" type="checkbox" name="locations" value="강원도">강원도
							</label> 
						</div>
						<div>
							<label>
								<input class="recommend-locations" type="checkbox" name="locations" value="충청도">충청도
							</label> 
						</div>
						<div>
							<label>
								<input class="recommend-locations" type="checkbox" name="locations" value="전라도">전라도
							</label>
						</div>
						<div>
							<label>
								<input class="recommend-locations" type="checkbox" name="locations" value="경상도">경상도
							</label>
						</div>
						<div>
							<label>
								<input class="recommend-locations" type="checkbox" name="locations" value="제주도">제주도
							</label>
						</div>
					</div>
			</div>
		</div>
		<div class="recommend-travel-places">
			추천여행지 <br>
			<div class="recommend-travel-locations">
				여행지
				<div class="result-div-wrap">

					<div class="recommend-travel-location">
						<div>
							<img style="max-width: 100px;" alt="" src="./img/jy/IFCmall.jpg">
						</div>
						<div>IFC몰</div>
					</div>
					<div class="recommend-travel-location">
						<div>
							<img style="max-width: 100px;" alt="" src="./img/jy/IFCmall.jpg">
						</div>
						<div>IFC몰</div>
					</div>
					<div class="recommend-travel-location">
						<div>
							<img style="max-width: 100px;" alt="" src="./img/jy/IFCmall.jpg">
						</div>
						<div>IFC몰</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="./js/jy/recommend.js"></script>