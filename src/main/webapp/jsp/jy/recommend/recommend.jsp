<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
<script type="text/javascript" src="./js/jy/recommend.js" defer="defer"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css" />


<div class="recommend-container">
	<div class="recommend-search">
		<div id="recommend-search-menus">
			<div class="recommend-search-themes">
				<div class="recommend-themes-title">테마</div>
				<div class="recommend-themes-condition">
					<div>
						<label class="recommend-themes-label"> <input
							class="recommend-themes" type="checkbox" name="themes" value="가족">
							<span class="recommend-theme">가족</span>
						</label>
					</div>
					<div>
						<label class="recommend-themes-label"> <input
							class="recommend-themes" type="checkbox" name="themes" value="친구">
							<span class="recommend-theme">친구</span>
						</label>
					</div>
					<div>
						<label class="recommend-themes-label"> <input
							class="recommend-themes" type="checkbox" name="themes" value="연인">
							<span class="recommend-theme">연인</span>
						</label>
					</div>
				</div>
			</div>
			<div class="recommend-search-places">
				<div class="recommend-places-title">장소</div>
				<div class="recommend-places-condition">
					<div>
						<label class="recommend-places-label"> <input
							class="recommend-places" type="checkbox" name="places" value="산">
							<span class="recommend-place">산</span>
						</label>
					</div>
					<div>
						<label class="recommend-places-label"> <input
							class="recommend-places" type="checkbox" name="places" value="바다">
							<span class="recommend-place">바다</span>
						</label>
					</div>
					<div>
						<label class="recommend-places-label"> <input
							class="recommend-places" type="checkbox" name="places" value="계곡">
							<span class="recommend-place">계곡</span>
						</label>
					</div>
				</div>
			</div>
			<div class="recommend-search-locations">
				<div class="recommend-locations-title">지역</div>
				<div class="recommend-locations-condition">
					<div>
						<label class="recommend-locations-label"> <input
							class="recommend-locations" type="checkbox" name="locations"
							value="서울"> <span class="recommend-location">서울</span>
						</label>
					</div>
					<div>
						<label class="recommend-locations-label"> <input
							class="recommend-locations" type="checkbox" name="locations"
							value="인천"> <span class="recommend-location">인천</span>
						</label>
					</div>
					<div>
						<label class="recommend-locations-label"> <input
							class="recommend-locations" type="checkbox" name="locations"
							value="대전"> <span class="recommend-location">대전</span>
						</label>
					</div>
					<div>
						<label class="recommend-locations-label"> <input
							class="recommend-locations" type="checkbox" name="locations"
							value="대구"> <span class="recommend-location">대구</span>
						</label>
					</div>
					<div>
						<label class="recommend-locations-label"> <input
							class="recommend-locations" type="checkbox" name="locations"
							value="광주"> <span class="recommend-location">광주</span>
						</label>
					</div>
					<div>
						<label class="recommend-locations-label"> <input
							class="recommend-locations" type="checkbox" name="locations"
							value="울산"> <span class="recommend-location">울산</span>
						</label>
					</div>
					<div>
						<label class="recommend-locations-label"> <input
							class="recommend-locations" type="checkbox" name="locations"
							value="부산"> <span class="recommend-location">부산</span>
						</label>
					</div>
					<div>
						<label class="recommend-locations-label"> <input
							class="recommend-locations" type="checkbox" name="locations"
							value="경기도"> <span class="recommend-location">경기도</span>
						</label>
					</div>
					<div>
						<label class="recommend-locations-label"> <input
							class="recommend-locations" type="checkbox" name="locations"
							value="강원도"> <span class="recommend-location">강원도</span>
						</label>
					</div>
					<div>
						<label class="recommend-locations-label"> <input
							class="recommend-locations" type="checkbox" name="locations"
							value="충청도"> <span class="recommend-location">충청도</span>
						</label>
					</div>
					<div>
						<label class="recommend-locations-label"> <input
							class="recommend-locations" type="checkbox" name="locations"
							value="전라도"> <span class="recommend-location">전라도</span>
						</label>
					</div>
					<div>
						<label class="recommend-locations-label"> <input
							class="recommend-locations" type="checkbox" name="locations"
							value="경상도"> <span class="recommend-location">경상도</span>
						</label>
					</div>
					<div>
						<label class="recommend-locations-label"> <input
							class="recommend-locations" type="checkbox" name="locations"
							value="제주도"> <span class="recommend-location">제주도</span>
						</label>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="recommend-travel-places">
		<div class="recommend-result-div-wrap"></div>
		<div id="recommend-result-pagination"></div>
	</div>
</div>

<div style="width: 100%;">
	<jsp:include page="test2.jsp"></jsp:include>
</div>




