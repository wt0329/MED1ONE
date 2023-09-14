<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 15">
<link rel=File-List href="영수증.files/filelist.xml">
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/jquery-3.7.0.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/customLibs.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/popper.min.js"></script>	
<script src="<%=request.getContextPath() %>/resources/js/bootstrap5/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<style id="02. 요구사항정의서_ver6_7910_Styles">
<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
#closeBtn{
	margin-left: 10px;
	display: inline-block;
	font-weight: 500;
	line-height: 1.5;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	color: #000000; /* 텍스트 색상 */
	background-color: #787878; /* 배경색 */
	border-color: #6aab9c; /* 테두리 색상 */
	user-select: none;
	padding: 0.375rem 0.75rem;
	font-size: 1.2em;
	border-radius: 0.25rem;
	float: right; /* 버튼을 오른쪽으로 부유(floating)시킴 */
}
.mint-btn {
	margin-left: 10px;
	display: inline-block;
	font-weight: 500;
	line-height: 1.5;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	color: #fff; /* 텍스트 색상 */
	background-color: #6aab9c; /* 배경색 */
	border-color: #6aab9c; /* 테두리 색상 */
	user-select: none;
	padding: 0.375rem 0.75rem;
	font-size: 1.2em;
	border-radius: 0.25rem;
	float: right; /* 버튼을 오른쪽으로 부유(floating)시킴 */
}

/* 민트색 버튼 호버 효과 */
.mint-btn:hover {
	background-color: #5fa192; /* 호버시 배경색 변경 */
	border-color: #5fa192; /* 호버시 테두리 색상 변경 */
	/* 다른 호버 효과 (예: 텍스트 색상 변경) 추가 가능 */
}
.font57910
	{color:windowtext;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;}
.font67910
	{color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;}
.font77910
	{color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;}
.font87910
	{color:black;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;}
.font97910
	{color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;}
.font107910
	{color:windowtext;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;}
.font117910
	{color:red;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;}
.xl157910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl967910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;
	text-align:right}
.xl977910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl987910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl997910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1007910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	background:#FCE4D6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1017910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:#FCE4D6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1027910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border:.5pt solid windowtext;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;
	text-align:right}
.xl1037910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1047910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:normal;}
.xl1057910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1067910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1077910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1087910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border:.5pt solid windowtext;
	background:#DDEBF7;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1097910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:#DDEBF7;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1107910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1117910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	background:#DDEBF7;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1127910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1137910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1147910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1157910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1167910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:"_-* \#\,\#\#0_-\;\\-* \#\,\#\#0_-\;_-* \0022-\0022_-\;_-\@_-";
	text-align:general;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;
	text-align:right;}
.xl1177910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:"Short Date";
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1187910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1197910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1207910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:right;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1217910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl1227910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid black;
	border-right:none;
	border-bottom:.5pt solid black;
	border-left:.5pt solid black;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1237910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid black;
	border-right:none;
	border-bottom:.5pt solid black;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1247910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid black;
	border-right:.5pt solid black;
	border-bottom:.5pt solid black;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1257910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1267910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1277910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1287910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:#DDEBF7;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1297910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1307910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1317910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1327910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1337910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1347910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1357910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1367910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1377910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1387910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xl1397910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1407910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1417910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1427910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1437910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1447910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:general;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1457910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1467910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1477910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1487910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1497910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1507910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1517910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1527910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:#FCE4D6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1537910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1547910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1557910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1567910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:"\#\,\#\#0";
	text-align:right;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1577910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:"\#\,\#\#0";
	text-align:right;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1587910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1597910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1607910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1617910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:windowtext;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1627910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:#FCE4D6;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1637910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1647910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid black;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1657910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid black;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1667910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid black;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1677910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid black;
	border-left:.5pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1687910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid black;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1697910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid black;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl1707910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid windowtext;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1717910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:none;
	border-left:none;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1727910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:#D9E1F2;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1737910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:white;
	mso-pattern:black none;
	white-space:nowrap;}
.xl1747910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:"_-* \#\,\#\#0_-\;\\-* \#\,\#\#0_-\;_-* \0022-\0022_-\;_-\@_-";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:none;
	border-bottom:.5pt solid windowtext;
	border-left:.5pt solid windowtext;
	background:#DDEBF7;
	mso-pattern:black none;
	white-space:nowrap;
	text-align:right;
	}
.xl1757910
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:red;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-number-format:"_-* \#\,\#\#0_-\;\\-* \#\,\#\#0_-\;_-* \0022-\0022_-\;_-\@_-";
	text-align:center;
	vertical-align:middle;
	border-top:.5pt solid windowtext;
	border-right:.5pt solid windowtext;
	border-bottom:.5pt solid windowtext;
	border-left:none;
	background:#DDEBF7;
	mso-pattern:black none;
	white-space:nowrap;}
ruby
	{ruby-align:left;}
rt
	{color:windowtext;
	font-size:8.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"맑은 고딕", monospace;
	mso-font-charset:129;
	mso-char-type:none;}
-->
</style>
</head>

<body>
<!--[if !excel]>　　<![endif]-->
<!--다음 내용은 Microsoft Excel의 웹 페이지로 게시 마법사를 사용하여 작성되었습니다.-->
<!--같은 내용의 항목이 다시 게시되면 DIV 태그 사이에 있는 내용이 변경됩니다.-->
<!----------------------------->
<!--Excel의 웹 페이지 마법사로 게시해서 나온 결과의 시작 -->
<!----------------------------->
<div  style="display: flex; justify-content: center;  position: relative; ">
<div id="02. 요구사항정의서_ver6_7910" align=center x:publishsource="Excel">

<table border=0 cellpadding=0 cellspacing=0 width=1129 style='border-collapse:
 collapse;table-layout:fixed;width:849pt;position: absolute; top: 0; right:-8px; ' class="report">
<img src="${pageContext.request.contextPath}/resources/images/logomark.png" style="margin-top: 350px; width: 600px; height: 112px; display: flex; justify-content: center; opacity: 0.4;">
 <col width=72 style='width:54pt'>
 <col width=139 style='mso-width-source:userset;mso-width-alt:4448;width:104pt'>
 <col width=106 style='mso-width-source:userset;mso-width-alt:3392;width:80pt'>
 <col width=134 style='mso-width-source:userset;mso-width-alt:4288;width:101pt'>
 <col width=106 style='mso-width-source:userset;mso-width-alt:3392;width:80pt'>
 <col width=130 style='mso-width-source:userset;mso-width-alt:4160;width:98pt'>
 <col width=125 style='mso-width-source:userset;mso-width-alt:4000;width:94pt'>
 <col width=149 style='mso-width-source:userset;mso-width-alt:4768;width:112pt'>
 <col width=96 style='mso-width-source:userset;mso-width-alt:3072;width:72pt'>
 <col width=72 style='width:54pt'>
 <tr height=41 style='mso-height-source:userset;height:30.75pt'>
  <td colspan=10 height=41 class=xl1587910 width=1129 style='border-right:.5pt solid black;  
  height:30.75pt;width:849pt'>[<span style='mso-spacerun:yes'>  </span><font
  class="font117910" id="clinicYn"></font><font class="font107910"><span
  style='mso-spacerun:yes' ></span>] 외래 [<span style='mso-spacerun:yes' id="hospitalYn">  <!-- 입원/진료 여부 clinicYn, hospitalYn  V로 표시 -->
  </span><font class="font107910"></font>] 입원 진료비 계산서 ·영수증<span style='mso-spacerun:yes'> </span></font></td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td colspan=2 height=23 class=xl1017910 style='border-right:.5pt solid black;
  height:16.9pt' >접수번호</td>
  <td class=xl1007910 style='border-left:none'>환자성명</td>
  <td class=xl1007910 style='border-left:none'>진료기간</td>
  <td class=xl1017910 style='border-left:none'>　</td>
  <td colspan=2 class=xl1017910>야간(공휴일<font class="font67910">) 진료</font></td>
  <td class=xl1227910>　</td>
  <td class=xl1237910>　</td>
  <td class=xl1247910>　</td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td colspan=2 height=23 class=xl1257910 style='border-right:.5pt solid black;
  height:16.9pt' id="recCode" ></td> <!-- 등록번호 -->
  <td class="xl987910 patntName" style='border-top:none;border-left:none' ></td> <!-- 환자 이름 -->
  <td class=xl987910 style='border-top:none;border-left:none' id="presDay"></td> <!-- 처방날짜 or 입원기간 -->
  <td class=xl987910 style='border-top:none;border-left:none'>　</td>
  <td class=xl977910 style='border-left:none'>[<span style='mso-spacerun:yes'> 
  </span>] 야간</td>
  <td class=xl977910 style='border-left:none'>[<span style='mso-spacerun:yes'> 
  </span>] 공휴일</td>
  <td colspan=3 class=xl1647910 style='border-right:.5pt solid black;
  border-left:none'>영수증번호(연월-일련번호)</td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td colspan=2 height=23 class=xl1427910 style='border-right:.5pt solid black;
  height:16.9pt' id="fcltyCode" >진료과목</td>
  <td class=xl977910 style='border-top:none;border-left:none'>진료의사</td>
  <td class=xl977910 style='border-top:none;border-left:none'>병실</td>
  <td class=xl977910 style='border-top:none;border-left:none'>　</td>
  <td class=xl977910 style='border-top:none;border-left:none'>급여종별</td>
  <td class=xl977910 style='border-top:none;border-left:none'>환자구분</td>
  <td colspan=3 class=xl1677910 style='border-right:.5pt solid black;
  border-left:none' id="receiveNum"></td> <!-- 영수증번호 --> 
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td colspan=2 height=23 class=xl1257910 style='border-right:.5pt solid black;
  height:16.9pt' id="fcltyNm"></td>    <!-- 병실 -->
  <td class=xl987910 style='border-top:none;border-left:none'>유송빈</td>
  <td class=xl1177910 style='border-top:none;border-left:none' id="hospitalBed"></td> <!-- 병실 -->
  <td class=xl1177910 style='border-top:none;border-left:none'>　</td>
  <td class=xl987910 style='border-top:none;border-left:none'>국민건강보험공단</td>
  <td class=xl1257910 style='border-top:none;border-left:none'>정상급여</td>
  <td class=xl1227910 style='border-top:none'>　</td>
  <td class=xl1237910 style='border-top:none'>　</td>
  <td class=xl1247910 style='border-top:none'>　</td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td colspan=2 rowspan=2 height=46 class=xl1297910 style='border-right:.5pt solid black;
  border-bottom:.5pt solid black;height:33.8pt'>항목</td>
  <td colspan=3 class=xl1537910 style='border-right:.5pt solid black;
  border-left:none'>급여</td>
  <td colspan=2 class=xl1537910 style='border-right:.5pt solid black;
  border-left:none'>비급여</td>
  <td colspan=3 class=xl1647910 style='border-right:.5pt solid black;
  border-left:none'>금액산정내용</td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td height=23 class=xl1037910 style='height:16.9pt;border-top:none;
  border-left:none'>본인부담금</td>
  <td class=xl1037910 style='border-top:none;border-left:none'>공단부담금</td>
  <td class=xl1037910 style='border-top:none;border-left:none'>전액본인부담</td>
  <td class=xl1037910 style='border-top:none;border-left:none'>선택진료로</td>
  <td class=xl1047910 width=125 style='border-top:none;border-left:none;
  width:94pt'>선택진료료<br>
    이외</td>
  <td class=xl1217910 width=149 style='border-top:none;border-left:none;
  width:112pt'>⑦ 진료비 총액<br>
    <font class="font87910">①+②+③+④+⑤</font></td>
  <td colspan=2 class=xl1567910 style='border-right:.5pt solid black' id="total"></td> <!-- 공단 총액  class="totalMoney -->
 </tr>
 <tr height=45 style='height:33.75pt'>
  <td colspan=2 height=45 class=xl1427910 style='border-right:.5pt solid black; 
  height:33.75pt'>진찰료</td>
  <td class=xl1167910 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes; color:black;'  id="patClinic"></span></td> <!-- 외래 본인 부담금  --> 
  <td class=xl1167910 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes; color:black;'  id="pubClinic"></span> </td> <!-- 외래 공단 부담금 --> 
  <td class=xl1167910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none; text-align:right;'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl1217910 width=149 style='border-top:none;border-left:none;
  width:112pt'>⑧ 환자부담총액<br>
    (<font class="font87910">①-⑥)+③+④+⑤</font></td>
  <td colspan=2 class="xl1567910 patTotal" id="totalAmt" style='border-right:.5pt solid black' ></td> <!-- 본인 부담금 총액-->
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td rowspan=3 height=69 class=xl977910 style='height:50.7pt;border-top:none'>입원료</td>
  <td class=xl1127910 style='border-top:none'>4인실</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="patHos4">　</td> 
  <td class=xl967910 style='border-top:none;border-left:none' id="pubHos4">　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl1097910 style='border-top:none;border-left:none'>⑬ 납부할 금액</td>
  <td colspan=2 class=xl1747910 style='border-right:.5pt solid black'><span
  style='mso-spacerun:yes' class="patTotal"></span> </td> <!-- 본인 부담금 총액 -->
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td height=23 class=xl1127910 style='height:16.9pt;border-top:none'>6인실</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="patHos6">　</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="pubHos6">　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl1157910 style='border-top:none;border-left:none'>　</td>
  <td colspan=2 class=xl1737910 style='border-right:.5pt solid black'>　</td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td height=23 class=xl1127910 style='height:16.9pt;border-top:none'>8인실</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="patHos8">　</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="pubHos8">　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td colspan=3 class=xl1437910 style='border-right:.5pt solid black;
  border-left:none'><input type="text" style="width:315px;" id="recvmtMth" placeholder="신한은행 xxx-xxxx-xxx / 카드 / 계좌이체 "/></td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td colspan=2 height=23 class=xl1427910 style='border-right:.5pt solid black;
  height:16.9pt'>식대</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="patDiet"> </td> 
  <td class=xl967910 style='border-top:none;border-left:none' id="pubDiet"> </td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td rowspan=4 class=xl1117910 style='border-top:none'>납부한 금액</td>
  <td class=xl1087910 style='border-top:none;border-left:none'>카드</td>
  <td class=xl1167910 style='border-top:none;border-left:none;text-align:right'><span
  style='mso-spacerun:yes'><input type="number" style="width:70px;" placeholder="0" />     </span> </td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td rowspan=6 height=138 class=xl1497910 style='border-bottom:.5pt solid black;
  height:101.4pt;border-top:none'>기본항목</td>
  <td class=xl967910 style='border-top:none;border-left:none'>투약 및<font
  class="font67910"> 조제료</font></td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="patMedicine"></td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl1087910 style='border-top:none;border-left:none'>현금영수증</td>
  <td class=xl1187910 align=right style='border-top:none;border-left:none'><input type="number" style="width:70px;" placeholder="0" /> </td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td height=23 class=xl967910 style='height:16.9pt;border-top:none;border-left:
  none'>마취료</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl1087910 style='border-top:none;border-left:none'>현금<span
  style='mso-spacerun:yes'> </span></td>
  <td class=xl1187910 align=right style='border-top:none;border-left:none'><input type="number" style="width:70px;" placeholder="0" /> </td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td height=23 class=xl967910 style='height:16.9pt;border-top:none;border-left:
  none'>검사료</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl1087910 style='border-top:none;border-left:none'>총액</td>
  <td class=xl1167910 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes' class="patTotal"></span> </td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td height=23 class=xl967910 style='height:16.9pt;border-top:none;border-left:
  none'>영상진단료</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="patInsO">　</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="pubInsO">　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td colspan=2 class=xl1297910 style='border-right:.5pt solid black;
  border-left:none'>납부하지 않은<font class="font67910"> 금액</font></td>
  <td class=xl1067910 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td height=23 class=xl967910 style='height:16.9pt;border-top:none;border-left:
  none'>방사선 치료료</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td colspan=3 rowspan=7 class=xl1297910 style='border-right:.5pt solid black;
  border-bottom:.5pt solid black'>　</td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td height=23 class=xl967910 style='height:16.9pt;border-top:none;border-left:
  none'>내시경비</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="patInsN">　</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="pubInsN">　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td rowspan=5 height=115 class=xl1497910 style='height:84.5pt;border-top:
  none'>선택항목</td>
  <td class=xl967910 style='border-top:none;border-left:none'>C<font
  class="font67910">T</font></td>
  <td class=xl967910 style='border-top:none;border-left:none' id="patInsK">　</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="pubInsK">　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td height=23 class=xl967910 style='height:16.9pt;border-top:none;border-left:
  none'>MRI</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="patInsL">　</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="pubInsL">　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td height=23 class=xl967910 style='height:16.9pt;border-top:none;border-left:
  none'>초음파</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="patInsM">　</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="pubInsM">　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td height=23 class=xl967910 style='height:16.9pt;border-top:none;border-left:
  none'>제증명료</td>
  <td class=xl967910 style='border-top:none;border-left:none'> </td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="patDoc"> </td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td height=23 class=xl997910 style='height:16.9pt;border-top:none;border-left:
  none'>MED1ONE 종합검진</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
  <td class=xl967910 style='border-top:none;border-left:none' id="patMdx">　</td>
  <td class=xl967910 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td colspan=2 height=23 class=xl1537910 style='border-right:.5pt solid black;
  height:16.9pt'>합계</td>
  <td class=xl1027910 style='border-top:none;border-left:none'>①<span
  style='mso-spacerun:yes'>       </span><font class="font97910"><span
  style='mso-spacerun:yes' id="moneyTotal1"> </span></font></td>
  <td class=xl1027910 style='border-top:none;border-left:none'>②<span
  style='mso-spacerun:yes'>      </span><font class="font97910"><span
  style='mso-spacerun:yes' id="moneyTotal2">       </span></font></td>
  <td class=xl1027910 style='border-top:none;border-left:none'>③<span
  style='mso-spacerun:yes'>      </span><font class="font97910" ><span
  style='mso-spacerun:yes' id="moneyTotal3">       </span></font></td>
  <td class=xl1027910 style='border-top:none;border-left:none'>④<span
  style='mso-spacerun:yes'>      </span><font class="font97910"><span
  style='mso-spacerun:yes' id="moneyTotal4">     </span></font></td>
  <td class=xl1027910 style='border-top:none;border-left:none'>⑤</td>
  <td class=xl1117910 style='border-top:none;border-left:none'>수납자</td>
  <td colspan=2 class="xl987910 patntName" style='border-left:none'></td>
 </tr>
 <tr height=23 style='height:16.9pt'>
  <td colspan=2 height=23 class=xl1707910 style='border-right:.5pt solid black;
  height:16.9pt'>상한액 초과금</td>
  <td class=xl1057910 style='border-top:none;border-left:none'>⑥<span
  style='mso-spacerun:yes'>       </span><font class="font97910"><span
  style='mso-spacerun:yes'>        </span></font></td>
  <td class=xl1067910 style='border-top:none;border-left:none'>　</td>
  <td class=xl1147910 style='border-top:none;border-left:none'>선택진료신청</td>
  <td class=xl1147910 style='border-top:none;border-left:none'>[<span
  style='mso-spacerun:yes'>   </span>]유</td>
  <td class=xl977910 style='border-top:none;border-left:none'>[<span
  style='mso-spacerun:yes'>   </span>]무</td>
  <td class=xl1287910 style='border-top:none'>전화번호</td>
  <td colspan=2 class=xl987910 style='border-left:none'>042-123-1234</td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.1pt'>
  <td colspan=2 height=27 class=xl1417910 style='border-right:.5pt solid black;
  height:20.1pt'>사업자 등록번호</td>
  <td colspan=2 class=xl1437910 style='border-left:none'>000-00-00000</td>
  <td class=xl1277910>　</td>
  <td class=xl1137910>상호</td>
  <td class=xl1197910 style='border-top:none;border-left:none'>MED1ONE</td>
  <td class=xl1077910 style='border-top:none;border-left:none'>전화번호</td>
  <td colspan=2 class=xl987910 style='border-left:none'>041-222-8202</td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.1pt'>
  <td colspan=2 height=27 class=xl1427910 style='border-right:.5pt solid black;
  height:20.1pt'>사업장 소재지</td>
  <td colspan=2 class=xl1397910 style='border-left:none'>대전 중구 오류동 계룡로 846 MED1ONE</td>
  <td class=xl1267910>　</td>
  <td class=xl1107910 style='border-top:none'>대표자</td>
  <td class=xl1207910 style='border-top:none;border-left:none'>황소희<span
  style='mso-spacerun:yes'>   </span>(인)</td>
  <td class=xl977910 style='border-top:none;border-left:none'>요양기관종류</td>
  <td colspan=2 class=xl987910 style='border-left:none'>종합병원</td>
 </tr>
 <tr height=22 style='mso-height-source:userset;height:16.5pt'>
  <td colspan=5 rowspan=2 height=95 class=xl1457910 style='border-right:.5pt solid black;
  border-bottom:.5pt solid black;height:71.25pt'>2023년 00월 00일</td>
  <td colspan=5 rowspan=2 class=xl1387910 width=572 style='width:430pt'><font
  class="font77910">다음진료</font><font class="font67910"><br>
    </font><font class="font97910"></font></td>
 </tr>
 <tr height=73 style='mso-height-source:userset;height:54.75pt'>
 </tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=72 style='width:54pt'></td>
  <td width=139 style='width:104pt'></td>
  <td width=106 style='width:80pt'></td>
  <td width=134 style='width:101pt'></td>
  <td width=106 style='width:80pt'></td>
  <td width=130 style='width:98pt'></td>
  <td width=125 style='width:94pt'></td>
  <td width=149 style='width:112pt'></td>
  <td width=96 style='width:72pt'></td>
  <td width=72 style='width:54pt'></td>
 </tr>
 <![endif]>
</table>
</div>
	<div style="margin-left:865px;position: absolute; margin-top:778px">
	<button id="closeBtn">닫기</button>
	<button class="mint-btn" id="subBtn">수납</button>
	<button class="mint-btn" id="pdfBtn">발급</button> 
	</div>
</div>


<!----------------------------->



<!--Excel의 웹 페이지 마법사로 게시해서 나온 결과의 끝-->
<!----------------------------->
<!-- Jquery Page Js -->
<script src="<%=request.getContextPath() %>/resources/js/bootstrap5/js/bootstrap.bundle.min.js"></script>
<!-- Jquery Core Js -->
<script src="<%=request.getContextPath() %>/resources/js/dist/assets/bundles/libscripts.bundle.js"></script>
<!-- Jquery Page Js -->
<script src="<%=request.getContextPath() %>/resources/js/template.js"></script>

<!-- Prism js file please do not add in your project -->
<script src="${pageContext.request.contextPath}/resources/dist/assets/plugin/prism/prism.js"></script>


<!-- Jquery Core Js -->
<script src="${pageContext.request.contextPath}/assets/bundles/libscripts.bundle.js"></script>

<!-- Plugin Js -->
<script src="<%=request.getContextPath() %>/resources/dist/assets/bundles/apexcharts.bundle.js"></script>
<script src="<%=request.getContextPath() %>/resources/dist/assets/plugin/owlcarousel/owl.carousel.js"></script>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath() %>/resources/js/template.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<script>
	const urlParams = new URLSearchParams(window.location.search);
	const recCode = urlParams.get('recCode');

	const Toast = Swal.mixin({
	    toast: true,
	    position: 'center-center',
	    showConfirmButton: false,
	    timer: 1000,
	    timerProgressBar: true,
	    didOpen: (toast) => {
	        toast.addEventListener('mouseenter', Swal.stopTimer)
	        toast.addEventListener('mouseleave', Swal.resumeTimer)
	    }
	});	
	
$(document).ready(function() { <!-- document.ready start -->
	function formatMoney(amount) {
	    return amount.toLocaleString('ko-KR', { style: 'currency', currency: 'KRW' });
	}


	$.getJSON("<c:url value='/receive/receiveBillView.do' />",{recCode:recCode}).done(function(resp){
		$(resp).each(function(idx,rec){
			//입원여부
			let presSepar = rec.clinic.pres.presd.presSepar;
			//검사여부
			let insYn = rec.clinic.insYn;
			//검진여부
			let mdexYn = rec.mdexmn;
			//단순 외래 진료 : presSepar, 검사여부, 검진여부가 null일때
			
			
			//외래, 입원 구분 V자 표시
			if(presSepar==null){
				$("#clinicYn").text("V");
			} else{
				$("#hospitalYn").text("V"); 
			}
			//환자이름,접수코드 표시
			let patntName = rec.patnt.patntNm;
			$("#recCode").text(recCode); 
			$(".patntName").text(patntName);
			
			let clinicMoney = formatMoney(5000);
			let patClinic = $("#patClinic").text(clinicMoney);  //진찰비(본인부담금)
			let pubClinic = $("#pubClinic").text(clinicMoney);  //진찰비(공단부담금)
			
			if(presSepar != null){ //입원환자
				let startDay = rec.hos.hsptlzIn;
				let endDay = rec.hos.hsptlzOutDate;
				$("#presDay").text(startDay+"~"+endDay); //입원기한
				let hospitalBed = rec.hos.sckbdRo;
				$("#hospitalBed").text(hospitalBed); //병실
				
				let hsptlzTotal = rec.hos.hsptlzTotal; //재원일수
				let hosCountMoney = rec.hos.com.codeVal; //입원료
				let totalHosAmount;
				let patHosAmount;
				let pubHostAmount;
				//식대
				let diet = 20000;
				let totalDiet = formatMoney((diet*hsptlzTotal)/2);
				$("#patDiet").text(totalDiet);
				$("#pubDiet").text(totalDiet);
				//몇인실인지
				if(hosCountMoney==200000) { //4인실
					totalHosAmount = hsptlzTotal*hosCountMoney;
					patHosAmount = formatMoney(totalHosAmount * 0.4);
					pubHostAmount = formatMoney(totalHosAmount * 0.6);
					$("#patHos4").text(patHosAmount);
					$("#pubHos4").text(pubHostAmount);
				} else if(hosCountMoney==150000){ //6인실
					totalHosAmount = hsptlzTotal*hosCountMoney;
					patHosAmount = formatMoney(totalHosAmount * 0.3);
					pubHostAmount = formatMoney(totalHosAmount * 0.7);
					$("#patHos6").text(patHosAmount);
					$("#pubHos6").text(pubHostAmount);
				} else if(hosCountMoney==100000){ //8인실
					totalHosAmount = hsptlzTotal*hosCountMoney;
					patHosAmount = formatMoney(totalHosAmount * 0.2);
					pubHostAmount = formatMoney(totalHosAmount * 0.8);
					$("#patHos8").text(patHosAmount);
					$("#pubHos8").text(pubHostAmount);
				}
				//약 값
				let presdocAmt = rec.clinic.pres.presd.presdocAmt;
				let TotalPresdocAmt = formatMoney(presdocAmt*hsptlzTotal);
				$("#patMedicine").text(TotalPresdocAmt);
				if(insYn != null){ //입원환자이면서 검사도 마친 환자
					//검사 가격
					let groupedResults = {};
					
					resp.forEach(result => {
				        let fcltyCode = result.clinic.ins.insp.fc.fcltyCode;
				        let cost = result.clinic.ins.insp.inspCost;

				        if (!groupedResults[fcltyCode]) {
				            groupedResults[fcltyCode] = { totalCost: 0, results: [] };
				        }

				        groupedResults[fcltyCode].totalCost += cost;
				        groupedResults[fcltyCode].results.push(result);
				    });
					
					for (let fcltyCode in groupedResults) {
						let totalCost = groupedResults[fcltyCode].totalCost;
				        let halfTotalCost = formatMoney(totalCost / 2);
						
				        groupedResults[fcltyCode].results.forEach(result => {
				        	 let targetId = `#${result.id}`;
									if(fcltyCode ==='O'){
										$("#patInsO").text(halfTotalCost);
										$("#pubInsO").text(halfTotalCost);
									} else if(fcltyCode ==='N') {
										$("#patInsN").text(halfTotalCost);
										$("#pubInsN").text(halfTotalCost);
									} else if(fcltyCode ==='K') {
										$("#patInsK").text(halfTotalCost);
										$("#pubInsK").text(halfTotalCost);
									} else if(fcltyCode ==='L') {
										$("#patInsL").text(halfTotalCost);
										$("#pubInsL").text(halfTotalCost);
									} else if(fcltyCode ==='M') {
										$("#patInsM").text(halfTotalCost);
										$("#pubInsM").text(halfTotalCost);
									}
				        });
					}
					
				} 
				//입원환자 끝
			} else if(mdexYn != null){	//검진환자
				let mdexmnDate = rec.mdexmn.mdexmnRsVO.mdexmnDate; //검진날짜
				$("#presDay").text(mdexmnDate); //검진날짜
				$("#hospitalBed").text("ㅡ"); //병실
				let mdexMoney = formatMoney(rec.mdexmn.mdexmnRsVO.com.codeVal);
				$("#patMdx").text(mdexMoney);
				
			} else if(presSepar == null && mdexYn == null){ //외래진료 환자
				let clinicDate = rec.clinic.clinicDate;
				$("#presDay").text(clinicDate); //처방날짜
				$("#hospitalBed").text("ㅡ"); //병실
				
				let presdocAmt;
				if(insYn != null){ //외래진료중 검사한 환자
					let groupedResults = {};
					
					resp.forEach(result => {
				        let fcltyCode = result.clinic.ins.insp.fc.fcltyCode;
				        let cost = result.clinic.ins.insp.inspCost;

				        if (!groupedResults[fcltyCode]) {
				            groupedResults[fcltyCode] = { totalCost: 0, results: [] };
				        }

				        groupedResults[fcltyCode].totalCost += cost;
				        groupedResults[fcltyCode].results.push(result);
				    });
					
					for (let fcltyCode in groupedResults) {
						let totalCost = groupedResults[fcltyCode].totalCost;
				        let halfTotalCost = formatMoney(totalCost / 2);
						
				        groupedResults[fcltyCode].results.forEach(result => {
				        	 let targetId = `#${result.id}`;
				        	 if(rec.clinic.pres.presd.presdocAmt>0) { //검사+주사
				        		 	let presdocAmt = formatMoney(rec.clinic.pres.presd.presdocAmt);
				        	 		$("#patMedicine").text(presdocAmt);
				        	 		
									if(fcltyCode ==='O'){
										$("#patInsO").text(halfTotalCost);
										$("#pubInsO").text(halfTotalCost);
									} else if(fcltyCode ==='N') {
										$("#patInsN").text(halfTotalCost);
										$("#pubInsN").text(halfTotalCost);
									} else if(fcltyCode ==='K') {
										$("#patInsK").text(halfTotalCost);
										$("#pubInsK").text(halfTotalCost);
									} else if(fcltyCode ==='L') {
										$("#patInsL").text(halfTotalCost);
										$("#pubInsL").text(halfTotalCost);
									} else if(fcltyCode ==='M') {
										$("#patInsM").text(halfTotalCost);
										$("#pubInsM").text(halfTotalCost);
									}
								} else{ //검사만
									if(fcltyCode ==='O'){
										$("#patInsO").text(halfTotalCost);
										$("#pubInsO").text(halfTotalCost);
									} else if(fcltyCode ==='N') {
										$("#patInsN").text(halfTotalCost);
										$("#pubInsN").text(halfTotalCost);
									} else if(fcltyCode ==='K') {
										$("#patInsK").text(halfTotalCost);
										$("#pubInsK").text(halfTotalCost);
									} else if(fcltyCode ==='L') {
										$("#patInsL").text(halfTotalCost);
										$("#pubInsL").text(halfTotalCost);
									} else if(fcltyCode ==='M') {
										$("#patInsM").text(halfTotalCost);
										$("#pubInsM").text(halfTotalCost);
									}
								}
				        });
					}
					
					
				} else { //단순 외래진료 환자(검사x)
					if(rec.clinic.pres.presd.presdocAmt>0) { //주사o
						presdocAmt = formatMoney(rec.clinic.pres.presd.presdocAmt);
						
						$("#patMedicine").text(presdocAmt);
					} 
				}
			}
			
			

			
			
			
			let valueIds1 = ["patClinic", "patHos4", "patHos6", "patHos8", "patDiet", "patInsO", "patInsN", "patInsK", "patInsL", "patInsM"];
			let valueIds2 = ["pubClinic", "pubHos4", "pubHos6", "pubHos8", "pubDiet", "pubInsO", "pubInsN", "pubInsK", "pubInsL", "pubInsM"];
			let valueIds3 = ["patMedicine"];
			let valueIds4 = ["patMdx"];

			let moneyTotal1 = 0;
			let moneyTotal2 = 0;
			let moneyTotal3 = 0;
			let moneyTotal4 = 0;

			function parseMoneyText(text) {
			    let cleanedText = text.replace(/[^\d.-]+/g, "");
			    if (cleanedText !== "") { // 공백이나 값이 없는 경우에는 더하지 않음
			        return parseFloat(cleanedText);
			    }
			    return 0; // 값이 없으면 0 반환
			}
		
		
			valueIds1.forEach(id => {
			    let text = $("#" + id).text();
			    moneyTotal1 += parseMoneyText(text);
			});

			valueIds2.forEach(id => {
			    let text = $("#" + id).text();
			    moneyTotal2 += parseMoneyText(text);
			});

			valueIds3.forEach(id => {
			    let text = $("#" + id).text();
			    moneyTotal3 += parseMoneyText(text);
			});

			valueIds4.forEach(id => {
			    let text = $("#" + id).text();
			    moneyTotal4 += parseMoneyText(text);
			});
			
			if (moneyTotal1 !== 0) {
				$("#moneyTotal1").text(formatMoney(moneyTotal1));
				
			}
			if (moneyTotal2 !== 0) {
				$("#moneyTotal2").text(formatMoney(moneyTotal2));
			}
			if (moneyTotal3 !== 0) {
				$("#moneyTotal3").text(formatMoney(moneyTotal3)); 
			}
			if (moneyTotal4 !== 0) {
				$("#moneyTotal4").text(formatMoney(moneyTotal4));
				
			}
			
			let totalValue = moneyTotal1 + moneyTotal2 + moneyTotal3 + moneyTotal4;
			let patTotalValue = moneyTotal1 + moneyTotal3 + moneyTotal4;

			// 결과 값을 포맷팅하여 출력
			if (totalValue !== 0) {
			    $("#total").text(formatMoney(totalValue));
			}

			if (patTotalValue !== 0) {
			    $(".patTotal").text(formatMoney(patTotalValue));
			}
			
			
			
		}); //each end
	}); //getJSON으로 가격 출력 end
	
	//수납 insert
	$("#subBtn").on("click",function(){
		let recvmtMth = $("#recvmtMth").val(); 
		let totalamtStr = $("#totalAmt").text();
		let totalamt = parseInt(totalamtStr.replace(/\D/g, ''));
		Swal.fire({
			   text: '총 수납금액 : '+totalamt+'원  수납을 진행하시겠습니까?',
			   icon: 'warning',
			   
			   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
			   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
			   cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
			   confirmButtonText: '승인', // confirm 버튼 텍스트 지정
			   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
			   
			   
			}).then(result => {
			   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
				   $.getJSON("<c:url value='/receive/insertReceive.do' />",{totalamt:totalamt, recvmtMth:recvmtMth, recCode:recCode}).done(function(resp){
						Toast.fire({
			    		    icon: 'success',
			    		    title: '수납이 완료되었습니다.'
			    		});
					});
			   }
			});
		
		
		
	});
	
	
	
	//pdf다운로드 영역
	let all_area_array = ['.report']; //전체영역 area /MediOne/src/main/webapp/
	let area_array = ['.report']; //pdf 다운 영역

	
	
	$('#pdfBtn').on("click", function () {
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
	    let pageHeight = imgWidth ;  // 출력 페이지 세로 길이 계산 A4 기준
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
	    doc.save("수납영수증_"+dateString+'.pdf');
	    
	    
	    
	  });
	}
	
	$("#closeBtn").on("click",function(){
		window.opener.location.reload();
	    
	    window.close();
	});
	
});<!-- document.ready end -->

</script>
</body>

</html>

