/**
 * 
 */
 
$(document).ready(function() {
  // 페이지 로드 시 모달 열기
  openModal();
  
  // 모달 닫기 버튼 클릭 시 모달 숨김
  $("#closeModalButton").click(function() {
    closeModal();
  });

  // 오늘 하루 더 이상 열지 않기 버튼 클릭 시 모달 숨김 및 처리 로직 추가
  $("#closeTodayModalButton").click(function() {
    closeModal();
    // 오늘 하루 동안 모달을 더 이상 열지 않는 처리를 여기에 추가하세요.
    disableModalForToday();
  });

  // 모달 닫기 함수
  function closeModal() {
    $("#welcomeModal").hide();
  }
  
  $("#welcomeModal").draggable();
});

// 모달 열기 함수
function disableModalForToday() {
  // 오늘 날짜를 구합니다.
  var today = new Date();
  today.setHours(0, 0, 0, 0);
  
  // 내일 날짜를 구합니다.
  var tomorrow = new Date(today);
  tomorrow.setDate(tomorrow.getDate() + 1);
  
  // 쿠키에 오늘과 내일 날짜를 설정합니다.
  document.cookie = "modalDisabled=true; expires=" + tomorrow.toUTCString() + "; path=/";
  
  // 모달을 닫습니다.
  closeModal();
}

// 모달 열기 함수
function openModal() {
  // 쿠키에서 modalDisabled 값을 확인하여 오늘 날짜와 비교하여 모달을 열지 여부를 결정합니다.
  var modalDisabled = document.cookie.replace(/(?:(?:^|.*;\s*)modalDisabled\s*\=\s*([^;]*).*$)|^.*$/, "$1");
  if (modalDisabled !== "true") {
    $("#welcomeModal").show();
  }
}
