

<body>

<button onclick="openFullscreenPopup('http://www.naver.com');">KDSnDID</button>

<script>
function openFullscreenPopup(url) {
    // 새 창을 열고 참조를 변수에 저장합니다.
    var popupWindow = window.open(url, 'popupWindow', 'width=1280,height=1024');

    // 새 창이 로드될 때 함수를 실행합니다.
    popupWindow.onload = function () {
        // Fullscreen API를 사용하여 전체 화면 모드로 전환합니다.
        if (popupWindow.document.fullscreenEnabled) {
            popupWindow.document.documentElement.requestFullscreen();
            alert(popupWindow.document.fullscreenElement);
        } else {
            alert('Fullscreen mode is not enabled in your browser.');
        }
    };
}
</script>

</body>

