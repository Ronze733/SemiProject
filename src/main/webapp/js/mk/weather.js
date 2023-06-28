const getJSON = function(url) {
  return fetch(url)
    .then(response => {
      if (!response.ok) {
        throw new Error(response.status);
      }
      return response.json();
    });
};

const url = 'https://api.openweathermap.org/data/2.5/weather?q=Daejeon&appid=4bffdfc37a41be14217fa1a310b44efe';

getJSON(url)
  .then(data => {
    const temp = data.main.temp;
    alert(`현재 온도는 ${temp}도 입니다.`);
  })
  .catch(error => {
    alert('죄송합니다, 예상치 못한 오류가 발생했습니다.');
  });


