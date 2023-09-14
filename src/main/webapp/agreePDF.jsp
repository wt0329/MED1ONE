<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
<!--  로딩-->
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>

</head>
<style>
/* 민트색 버튼 스타일 */
.mint-btn {
	/* 	margin-left:10px; */
	display: inline-block;
	/*     font-weight: 400; */
	line-height: 1.5;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	color: #fff; /* 텍스트 색상 */
	background-color: #6aab9c; /* 배경색 */
	border-color: #6aab9c; /* 테두리 색상 */
	user-select: none;
	padding: 0.375rem 0.75rem;
	font-size: 1.0em;
	border-radius: 0.25rem;
	float: right; /* 버튼을 오른쪽으로 부유(floating)시킴 */
}

/* 민트색 버튼 호버 효과 */
.mint-btn:hover {
	background-color: #5fa192; /* 호버시 배경색 변경 */
	border-color: #5fa192; /* 호버시 테두리 색상 변경 */
	/* 다른 호버 효과 (예: 텍스트 색상 변경) 추가 가능 */
}

/* 민트색 버튼 클릭 효과 */
.mint-btn:active {
	background-color: #5fa192; /* 클릭시 배경색 변경 */
	border-color: #5fa192; /* 클릭시 테두리 색상 변경 */
}
</style>
<body>
<div style="display: flex; justify-content: space-between;">
	<img src="${pageContext.request.contextPath}/resources/images/agree.png" class="report" >
	<button class="mint-btn" type="button" id="pdf" style="height:30px; width: 100px; margin-top: 30px;">PDF 저장</button>
</div>

<script type="text/javascript">
let all_area_array = ['.report']; //전체영역 area
let area_array = ['.report']; //pdf 다운 영역

$('#pdf').on("click", function () {
	//loadingOverlay 라이브러리 실행
	$.LoadingOverlay("show", {
        image: "<%=request.getContextPath() %>/resources/images/mainSpinnerIcon.gif" // 로딩 중에 표시될 이미지 경로
        ,imageAnimation: false  //빙글빙글 돌아가는거 막음
    });

    // 1초 후에 함수 실행
    setTimeout(function () {
        // 여기에 함수 실행 코드 추가 (pdf저장)
        let difference = all_area_array.filter(x => !area_array.includes(x));

		  $.each(difference,function(index, item){
		    $(item).attr('data-html2canvas-ignore', true);
		  });
		  setTimeout(pdfMake(),500);
        
        // LoadingOverlay 숨기기
        $.LoadingOverlay("hide");
    }, 1000); // 1초 후에 실행
  
});

const pdfMake = () => {
  html2canvas($('.report')[0], {
	    scale: 2 // 높은 해상도
  }).then(function(canvas) {
    let imgData = canvas.toDataURL('image/png');

    let imgWidth = 210; // 이미지 가로 길이(mm) A4 기준
    let pageHeight = imgWidth * 2;  // 출력 페이지 세로 길이 계산 A4 기준
    let imgHeight = canvas.height * imgWidth / canvas.width;
    let heightLeft = imgHeight;

    let doc = new jsPDF('p', 'mm', 'a4', true, 'dpi'); // dpi 옵션 추가
    let position = 0;

    // 첫 페이지 출력
    doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
    heightLeft -= pageHeight;

    // 한 페이지 이상일 경우 루프 돌면서 출력
    while (heightLeft >= 20) {
        position = heightLeft - imgHeight;
        doc.addPage();
        doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
        heightLeft -= pageHeight;
    }
    
    

    let today = new Date();
    let year = today.getFullYear();
    let month = ('0' + (today.getMonth() + 1)).slice(-2);
    let day = ('0' + today.getDate()).slice(-2);
    let hours = ('0' + today.getHours()).slice(-2);
    let minutes = ('0' + today.getMinutes()).slice(-2);

    let dateString = year + month + day + hours + minutes;

    // 파일 저장
    doc.save("입퇴원확인서_"+dateString+'.pdf');
    
    
    
  });
}
</script>
</body>
</html>