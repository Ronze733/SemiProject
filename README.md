# South Korea Travel Controller (SKTC)

oracle db, java, html, css 및 추가적으로 공부하여 만든 여행지 추천 사이트

## 1. 프로젝트 소개

user가 원하는 여행지 테마에 맞춰 여행지를 추천해주고 그것을 저장하거나, 여행지에 대한 리뷰를 작성할 수 있는 사이트

## 2. 멤버

- 공동 : DB 작성, README.md 작성
- 김지윤 : 여행지 추천 페이지 작성, Ajax 활용
- 박명규 : 여행지 상세 페이지 작성, 날씨 ・ 지도 API 활용
- 이범준 : 계정 관리, 부트스트랩 활용, DB 유저 tbl 관리
- 이상혁 : Q&A 페이지 작성, CRUD 사용, DB QnA tbl 관리
- 임정현 : 여행지 리뷰 페이지 작성, CRUD 사용, DB 리뷰 tbl 관리
- 황재민 : 프로젝트 팀장, .git 관리, 중앙 파일 서버 연결

## 3. 개발 환경

- JAVA JDK-14
- **IDE** : Eclipse
- **DATABASE** : Oracle Cloud DB
- server : local tomcat

## 4. 주요 사용 기능 및 라이브러리

- **Ajax**
- **BootStrap**
- **jQuery**

## 5. DB diagram
<img width="368" alt="dbdiagram" src="https://github.com/Ronze733/SemiProject/assets/85848890/543a6ad7-d241-405d-a361-1a614e50b201">

## 6. 주요 기능 코드

- Ajax
  ``` js
  $.ajax({
    type: "POST", // 요청 타입
    url: "RecommendC", // 호출할 jsp 파일 / 컨트롤러 가도 됨
    success: function (data) {
      setVal(data);
      paging(data.data);
      
    }
  });
  ```
  <details>
    <summary> setVal 함수 </summary>

    ``` js
    function setVal(data) {
      clearResults();

      console.log(data.data);

      var length = data.data.length;
      console.log(length);

      if (length === 0) {
        var message = $('<div class="recommend-result-nothing">').text(
          "해당 정보를 찾을 수 없습니다."
        );
      resultDivWrap.append(message);
      } else {
        $.each(data.data, function (i, el) {
          let resultDiv2 = $(resultDiv).clone();
          console.log(el.name);
          console.log(el.id);
          if(el.id >=28){
		        $(resultDiv2).find(".recommend-result-img").attr("style", "background-image: url('"+ el.pic +"');");
		      } else{
	          $(resultDiv2).find(".recommend-result-img").attr("style", "background-image: url('./img/mk/" + el.pic +"');");
		      }
          $(resultDiv2).find(".recommend-result-name").text(el.name);
          $(resultDiv2).find(".recommend-result-location").text(el.category3);
          $(resultDiv2).find(".recommend-result-img").attr("onclick", "sendController(" + el.id + ")");
          $(resultDivWrap).append(resultDiv2);
        });
      }
    }
    ```
    
  </details>
  <details>
    <summary> paging 함수 </summary>

  ``` js
  function paging(data){
    console.log(data)
    let container = $('#recommend-result-pagination');
    container.pagination({
            dataSource: data,
            pageSize:6,
            callback: function (data, pagination) {
			console.log(pagination)
			console.log(data);
                var dataHtml = '';
				if(data.length === 0){
					dataHtml +=`<div class="recommend-result-nothing">
								해당 정보를 찾을 수 없습니다.
								</div>`;
				}
                $.each(data, function (index, item) {
					console.log(item.pic);
					console.log(item.name);
					console.log(item.category3);
					if(item.id >= 28){
                    	dataHtml += `<div class="recommend-result-div">
							<div class="recommend-result-img" style="background-image:url('${item.pic}')" onclick="sendController(${item.id})">
							</div>
							<div class="recommend-result-name">${item.name}</div>
							<div class="recommend-result-location">${item.category3}</div>
						</div>
						`;
					} else {
                    	dataHtml += `<div class="recommend-result-div">
							<div class="recommend-result-img" style="background-image: url('./img/mk/${item.pic}')" onclick="sendController(${item.id})">
							</div>
							<div class="recommend-result-name">${item.name}</div>
							<div class="recommend-result-location">${item.category3}</div>
						</div>
						`;
					}
                });
                $(".recommend-result-div-wrap").html(dataHtml);
            }
        })
  }
  ```
  </details>

  
- 별점 기능
  ``` jsp
  <div>
		<span class="review_star"> ★★★★★ <span>★★★★★</span> 
		  <input type="range" class="s" step="1" min="0" max="10"> 
		  <input type="text" class="star_value" name="star_value" value="${r.review_likes}">
		</span>
	</div>
  ```
  <details>
    <summary> 별 표시 함수 </summary>

  ``` js
  function drawStar(target) {
    const starSpan = document.querySelector('.review_star span');
    if (starSpan) {
      const width = target.value * 10 + '%';
      starSpan.style.width = width;
      console.log(target.value);
      document.querySelector("#star_value").value = target.value;
    }
  }
  ```
  </details>

  <details>
  <summary> 값을 db에 보내기 위한 함수 </summary>

  ``` js
  function drawStar2() {
	  let starEls = document.querySelectorAll('.star_value');
    //	console.log(starEls);
	  starEls.forEach(function(e) {
		  console.log(e.value);
		  console.log(e.previousSibling.previousSibling)	
		  let psEl = e.previousSibling.previousSibling;
		  let parentSpan = psEl.previousSibling.previousSibling;
		  console.log(parentSpan);
		  const width = e.value * 10 + '%';
		  console.log(width);
		  parentSpan.style.width = width;	
	  });
  }
  ```

</details>

- 날씨 및 지도 API
  <details>
    <summary> 날씨 API </summary>

  ``` java
  public void makeWeather(HttpServletRequest request) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String pId = request.getParameter("pid"); 
		String sql = "select place_addr2 from place where place_id = ?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pId);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {

			String city = rs.getString("place_addr2");
			String url = "https://api.openweathermap.org/data/2.5/forecast?q=" + city + "&units=metric&cnt=40&appid=3c20bb3f5ab75a340db446d8ba273c5b";
			
			URL u = new URL(url);
			HttpsURLConnection  huc = (HttpsURLConnection) u.openConnection();
			
			InputStream is = huc.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "utf-8");
			
				JSONParser jp = new JSONParser();
				JSONObject weatherData = (JSONObject) jp.parse(isr);
				
				JSONObject sysJ = (JSONObject) weatherData.get("city");
				JSONArray weatherJ = (JSONArray) weatherData.get("list");
				
				String cityName = sysJ.get("name") + "";
				String countryName = sysJ.get("country") + "";
				
				request.setAttribute("cityName", cityName);
				request.setAttribute("countryName", countryName);
				
				Weather weather = null;
				
				ArrayList<Weather> weathers = new ArrayList<Weather>();
				
				for (int i = 0; i < 3; i++) {
					JSONObject day = (JSONObject) weatherJ.get(8 * i + 4);
					String date = (String) day.get("dt_txt");
					String popS = day.get("pop") + "";
					double pop = Double.parseDouble(popS);
					JSONObject main = (JSONObject) day.get("main");
					String humidity = main.get("humidity") + "";
					String minTemp = main.get("temp_min") + "";
					String maxTemp = main.get("temp_max") + "";
					String feelTemp = main.get("feels_like") + "";
					
					JSONArray conditionJ = (JSONArray) day.get("weather");
					String condition = ((JSONObject) conditionJ.get(0)).get("main") + "";
					String icon = ((JSONObject) conditionJ.get(0)).get("icon") + "";
					icon = icon.replace("n", "d");
					
					String translatedCondition = translateToKorean(condition);
					
					String windspeed = ((JSONObject) day.get("wind")).get("speed") + "";
					
					weather = new Weather(humidity, minTemp, maxTemp, feelTemp, windspeed, translatedCondition, date, icon, pop);				
					weathers.add(weather);
				}
				request.setAttribute("weathers", weathers);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
  ```

  </details>
  <details>
    <summary> 지도 API </summary>

  ``` java
  public static void getPlaceInfo(HttpServletRequest request) {
		Connection con = DBManager.connect();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String pId = request.getParameter("pid");
		System.out.println(pId);
		String sql = "select*from place where place_id=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pId);
			rs= pstmt.executeQuery();
			
			if (rs.next()) {
			
			int p_id = rs.getInt("place_id");
			String p_name = rs.getString("place_name");
			String p_category1 = rs.getString("place_category1");
			String p_category2 = rs.getString("place_category2");
			String p_category3 = rs.getString("place_category3");
			String p_placePic = rs.getString("place_pic");
			String p_explain = rs.getString("place_explain");
			String p_addr = rs.getString("place_addr");
			
			PlaceInfo pi = new PlaceInfo(p_id, p_name, p_category1, p_category2, p_category3, p_placePic, p_explain, p_addr);  
			
			request.setAttribute("placeInfo",pi);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
	}
  ```
  </details>

- Accordion 기능
  ``` js
  $(".que").click(function() {
     $(this).next(".anw").stop().slideToggle(300);
    $(this).toggleClass('on').siblings().removeClass('on');
    $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
  });
  ```

- 중앙 파일 서버 연결
  ``` java
  public static String uploadToDropbox(InputStream fileInputStream, String fileName) {
		DbxRequestConfig config = DbxRequestConfig.newBuilder("dropbox/semi-project").build();
		DbxClientV2 client = new DbxClientV2(config, ACCESS_TOKEN);

		FullAccount account;
		try {
			account = client.users().getCurrentAccount();
			System.out.println(account.getName().getDisplayName());
			FileMetadata metadata = client.files().uploadBuilder("/SemiProject/" + fileName).uploadAndFinish(fileInputStream);
			String pathDisplay = metadata.getPathDisplay();
			System.out.println(pathDisplay);
			
			FileMetadata metadata2 = (FileMetadata) client.files().getMetadata("/SemiProject/" + fileName);
			
			SharedLinkMetadata sharedLinkMetadata = client.sharing().createSharedLinkWithSettings(metadata2.getPathLower());
			
			String currentUrl = sharedLinkMetadata.getUrl();
			
			String rawUrl = currentUrl.replace("dl=0", "raw=1");
			
			return rawUrl;
		} catch (UploadErrorException e) {
			// TODO Auto-generated catch block
			// 업로드 에러 처리
			e.printStackTrace();
		} catch (DbxApiException e) {
			// DropBox Api 예외 처리
			e.printStackTrace();
		} catch (DbxException e) {
			// DropBox 예외 처리
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
	}
  ```

## 8. PDF

[다운로드 pdf](./SKTC.pdf?raw=true)
  
