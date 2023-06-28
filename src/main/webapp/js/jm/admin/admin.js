/**
 * 
 */



function check() {
	let pic = document.getElementById("pic").value;
	let name1 = document.getElementById("placeName").value;
	let addr = document.getElementById("placeAddr").value;
	let category1 = document.getElementsByName("category1");
	let category2 = document.getElementsByName("category2");
	let category3 = document.getElementById("category3").value;
	let explain = document.getElementById("placeExplain").value;
	let addr2 = document.getElementById("placeAddr2").value;
	console.log(pic);
	console.log(name1);
	console.log(addr);
	console.log(category1);
	console.log(category2);
	console.log(category3);
	console.log(explain);
	console.log(addr2);
	if (pic != "") {
		if (name1 != "") {
			if (addr != "") {
				if (category1[0].checked || category1[1].checked || category1[2].checked) {
					if (category2[0].checked || category2[1].checked || category2[2].checked) {
						if (explain != "") {
							if (addr2 != "") {
								return true;
							} else {
								alert("영어 주소를 입력해 주세요");
								return false;
							}
						} else {
							alert("장소 설명을 입력해 주세요");
							return false;
						}
					} else {
						alert("카테고리 2 체크를 확인해 주세요");
						return false;
					}
				} else {
					alert("카테고리 1 체크를 확인해 주세요");
					return false;
				}
			} else {
				alert("도로명 주소를 입력하세요");
				return false;
			}
		} else {
			alert("장소 명을 입력하세요");
			return false;
		}
	} else {
		alert("사진을 넣으세요");
		return false;
	}
}