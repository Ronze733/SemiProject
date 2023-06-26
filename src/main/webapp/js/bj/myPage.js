$().ready(function () {
    $("#confirmStart").click(function () {
        Swal.fire({
            title: '정말로 그렇게 하시겠습니까?',
            text: "탈퇴하지 말아주세요 할인 많이 드릴게요 제발요 진짜 제발..",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: '승인',
            cancelButtonText: '취소'
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire(
                    '승인이 완료되었습니다.',
                    '저희는 언제나 돌아오시기만을 기다리고 있을게요',
                    'success'
                ).then(() => {
                    location.href = 'AccountDelC';
                });
            }
        });
    });
});
