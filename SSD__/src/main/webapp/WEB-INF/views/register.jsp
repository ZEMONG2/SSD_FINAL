<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>SSA_Register_</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/b269e2b2e2.js"
	crossorigin="anonymous"></script>
<!-- css코드 -->
<link rel="stylesheet" href="./resources/css/SSA.css">

<style>

.available_id{
color:#008000;
display: none;
}

.duplicate_id{
color:#ff0000; 
display: none;
}


</style>


</head>

<body class="reg_body">
	<div class="justify-content-center">

		<div class="col-lg-17">
			<div class="p-5">
				<div class="d-flex align-items-center justify-content-center">

					<!-- 119로고 및 회원가입 문구 -->
					<div>
						<img class="reg_img" src="./resources/img/119 Logo.png"><br>

					</div>

					<div class="reg_text">
						<b>회원가입</b>
					</div>

				</div>
				<hr>
				<!-- form 태그 -->
				<form action="Join" method="post" class="reg_form">

					<!-- 지역 아코디언  -->
					<div class="accordion" id="accordionExample">
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingOne">
								<button class="accordion-button" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseOne"
									aria-expanded="true" aria-controls="collapseOne">지역</button>
							</h2>
							<div id="collapseOne" class="accordion-collapse collapse show">
								<!-- 아코디언 바디 -->
								<!-- 추가 : 시/도 를 누르면 해당 지역에 맞는 다음지역 출력하도록 해야함 -->
								<!-- 지역마다 시/군/구 , 읍/면/동 찾아서 넣어야함 -->
								<div class="accordion-body">
									<select name="user_addressRegion" class="form-control" id="addressRegion1" style="width:110px; display:inline-block;"></select>
    									<select name="user_addressDo" class="form-control" id="addressDo1"  style="width:110px; display:inline-block; margin-left:10px;"></select>
    									<select name="user_addressSiGunGu" class="form-control" id="addressSiGunGu1"  style="width:110px; display:inline-block; margin-left:10px;"></select>
										
									<br>

									<!-- 소속 소방서도 드롭다운으로해서 위에 지역 선택시 그 지역에 있는 소방서만 추출되도록 해야함 -->
									<div class="form-group">
										<label for="fire_station_title">소방서</label> <input type="text"
											class="form-control" id="fire_station" name="user_fs"
											placeholder="소속 소방서를 입력하세요">
									</div>
									<div class="form-group">
										<label for="fire_station_title">계급</label>
										<select name="user_rank" class="form-control" id="user_rank">
											<option value="">선택</option>
											<option value="소방사">소방사</option>
											<option value="소방교">소방교</option>
											<option value="소방장">소방장</option>
											<option value="소방위">소방위</option>
											<option value="소방경">소방경</option>
											<option value="소방령">소방령</option>
											<option value="소방준감">소방준감</option>
											<option value="소방감">소방감</option>
											<option value="소방정감">소방정감</option>
											<option value="소방총감">소방총감</option>
										
										
										</select>
									</div>



								</div>
								<br>
							</div>
						</div>

					</div>
					<br>

					<!-- 아이디 폼 -->
					<div class="form-group">
						<label for="userId_title">아이디</label> 
						<input type="id" class="form-control" id="id" name="user_id"
							placeholder="아이디를 입력해주세요"  required oninput = "checkId()">
													
							<!-- id ajax 중복체크 및 양식체크-->
							<font id="checkId" size="3"></font>
							<span class="duplicate_id">이미 사용중이거나 탈퇴한 아이디입니다.</span>
							<span class="available_id">사용 가능한 아이디입니다.</span>
							

					</div>
					<br>
					<!-- 비밀번호 폼 -->
					<div class="form-group">
						<label for="passowrd_title">비밀번호</label> 
						<input type="password" class="form-control" id="password" name="user_pw"
							placeholder="비밀번호를 입력해주세요" class="chk">
					</div>
					<br>
					<!-- 비밀번호 재확인 폼 -->
					<div class="form-group">
						<label for="passwordCheck_title">비밀번호 확인</label> <input
							type="password" class="form-control" id="passwordCheck" name="user_pw_ck"
							placeholder="비밀번호를 다시 입력해주세요" class="chk">
					</div>
					<br>
					<!-- 이름 폼 -->
					<div class="form-group">
						<label for="userName_title">이름</label> <input type="text"
							class="form-control" id="userName" name="user_name"
							placeholder="이름을 입력하세요">
					</div>

					<!-- 생년월일 폼  -->
					<!-- 년도는 다 넣기 귀찮아서 나중에 이클립스로 다시 연동할 때 for문으로 돌릴예정 -->
					<!-- 월 선택 시 그 월에 맞는 일수가 나오도록 해야함 -->
					<label class="form-label mt-4">생년월일</label>
					<div class="bir_yy">
						<select class="form-control" name="user_birthdate">
							<option>년도</option>
							<%for(int i = 2022;i>=1900;i--){ %>
							<option value="<%=i%>"><%=i %>년</option>
							<%} %>
							

						</select>
					</div>
					<div class="bir_mm">
						<select class="form-control" name="user_birthdate">
							<option>월</option>
							<%for(int j = 1;j<=12;j++){ %>
							<option value="<%=j%>"><%=j%>월</option>
							<%} %>

						</select>
					</div>
					<div class="bir_dd">
						<select class="form-control" name="user_birthdate">
							<option>일</option>
							<%for(int j = 1;j<=31;j++){ %>
							<option value="<%=j%>"><%=j%>일</option>
							<%} %>

						</select>


					</div>
					
					
					<!-- 사용자 주소 폼 -->
					<label class="form-label mt-4">주소</label>
					<div>
					<input type="text" class = "form-control" style ="width:auto; display:inline" id="sample6_postcode" placeholder="우편번호">
					<input type="button" class = "btn" style = "background-color: #F39C12; color : white; width :auto" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br><br> 
					<input type="text" class = "form-control" id="sample6_address" name="user_address" placeholder="주소">
					<input type="text" class = "form-control" id="sample6_detailAddress" name="user_address2" placeholder="상세주소">
					
					</div><br>
					
			
			
					<!-- 성별 폼 -->
					<div>
						<label class="form-label mt-4">성별</label>
					</div>

					<div class="genderType">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="user_gender"
								id="gender" value="men"> <label class="form-check-label"
								for="inlineRadio1">남자</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="user_gender"
								id="gender" value="women"> <label
								class="form-check-label" for="inlineRadio2">여자</label>
						</div>

					</div>
					<br>

					<!-- 혈액형 폼 -->

					<label class="form-label mt-4">혈액형</label>
					<div class="bloodType">
						<select class="form-control" name="user_bloodtype">
							<option>선택</option>
							<option value="A">A형</option>
							<option value="AB">AB형</option>
							<option value="B">B형</option>
							<option value="O">O형</option>


						</select>
					</div>
					<br>
					<br>
					<br>

					<!-- 가입 버튼 -->
					<div class="btn_reg">
						<button type="submit" class="btn">가입</button>
					</div>
				</form>

			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<script type="text/javascript" src="./resources/js/regiseter_check.js?v=<%=new java.util.Date().getTime()%>"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
	
	<!-- 아이디 정규식 체크 --> 
	function IdCheck(str){                                                 
		var reg_Id =  /^[a-z]+[a-z0-9]{4,19}$/g;

		if(!reg_Id.test(str)) {                            
		return false;         
		}else {                       
		return true;         
	  }                            
	}

<!--  아이디 실시간 중복체크 (Ajax) -->
    function checkId() {
        var id = $('#id').val(); 
        
        if(id==""){
  			$('#checkId').html('아이디를 입력해주세요.');
			$("#checkId").attr('color', 'red'); 
			$('.available_id').css("display", "none");
			$('.duplicate_id').css("display", "none");
			
  		}else if(!IdCheck(id)){
  			$('#checkId').html('5~20자의 영문자로 시작하는 영문 소문자 또는 숫자만 사용가능합니다.');
			$("#checkId").attr('color', 'red');
			$('.available_id').css("display", "none");
			$('.duplicate_id').css("display", "none");
  		
  		
  		}else{
  			$('#checkId').html('');
  		
       $.ajax({
				url : 'idCheck', 
				type : 'post', 
				data : {user_id : id},
				success : function(cnt) { //컨트롤러에서 넘어온 cnt값을 받는다 
					if (cnt == 0) { //cnt가 0일 경우는 사용 가능한 아이디 
						$('.available_id').css("display", "inline-block");
						$('.duplicate_id').css("display", "none");
					} else { // cnt가 1일 경우는 이미 존재하는 아이디
						$('.duplicate_id').css("display", "inline-block");
						$('.available_id').css("display", "none");
					}
				},
				error : function() {
					alert("에러입니다");
				}
		});
	};
    }
		</script>
		
		<!-- 우편번호 API  -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                   
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
   	 }
	</script>
	
	<!--지역 셀렉트박스-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
    areaSelectMaker("select[name=user_addressRegion]");
});

var areaSelectMaker = function(target){
    if(target == null || $(target).length == 0){
        console.warn("Unkwon Area Tag");
        return;
    }

    var area = {
        "서울특별시" :{
            "종로구" : [ "청운효자동", "사직동", "삼청동", "부암동", "평창동", "무악동", "교남동", "가회동", "종로1/2/3/4가동", "종로5/6가동", "이화동", "혜화동", "창신1동", "창신2동", "창신3동", "숭인1동", "숭인2동"],
            "중구" : [ "소공동", "회현동", "명동", "필동", "장충동", "광희동", "을지로동", "신당동", "다산동", "약수동", "청구동", "신당제5동", "동화동", "황학동", "중림동"],
            "용산구" : [ "후암동", "용산2가동", "남영동", "청파동", "원효로1동", "원효로2동", "효창동", "용문동", "한강로동", "이촌1동","이촌2동","이태원1동","이태원2동", "한남동", "서빙고동", "보광동" ],			
           	"성동구" : [ "왕십리제2동", "왕십리도선동", "마장동", "사근동", "행당제1동", "행당제2동", "응봉동", "금호1가동", "금호2/3가동", "금호4가동","성수1가제1동","성수1가제2동","성수2가제1동", "성수2가제3동", "송정동", "용답동","옥수동" ],	
           	"광진구" : [ "중곡제1동", "중곡제2동", "중곡제3동", "중곡제4동", "능동", "구의제1동", "구의제2동", "구의제3동", "광장동", "자양제1동","자양제2동","자양제3동","자양제4동", "화양동", "군자동"],			
           	"동대문구" : [ "용신동", "제기동", "전농제1동", "전농제2동", "답십리제1동", "답십리제2동", "장안제1동", "장안제2동", "청량리동", "회기동","휘경제1동","휘경제2동","이문제1동", "이문제2동"],			
           	"중랑구" : [ "면목본동", "면목제2동", "면목제3/8동", "면목제4동", "면목제5동", "면목제7동", "상봉제1동", "상봉제2동", "중화제1동", "중화제2동","묵제1동","묵제2동","망우본동", "망우제3동", "신내1동", "신내2동"],			
           	"성북구" : [ "성북동", "삼선동", "동선동", "돈암제1동", "돈암제2동", "안암동", "보문동", "정릉제1동", "정릉제2동", "정릉제3동","정릉제4동","길음제1동","길음제2동", "종암동", "월곡제1동", "월곡제2동","장위제2동","장위제2동","장위제3동", "석관동" ],			
           	"강북구" : [ "삼양동", "미아동", "송중동", "송천동", "송천동", "삼각산동", "번1동", "번2동", "번3동", "수유1동","수유2동","수유3동","우이동", "인수동"],			
           	"도봉구" : [ "쌍문제1동", "쌍문제2동", "쌍문제3동", "쌍문제4동", "방학제1동", "방학제2동", "방학제3동", "창제1동", "창제2동", "창제3동","창제4동","창제5동","도봉제1동", "도봉제2동"],			
           	"노원구" : [ "월계1동", "월계2동", "월계3동", "공릉1동", "공릉2동", "하계1동", "하계2동", "중계본동", "중계1동", "중계2/3동","중계4동","상계1동","상계2동", "상계3/4동","상계5동", "상계6/7동","상계8동","상계9동","상계10동"],			
           	"은평구" : [ "녹번동", "불광제1동", "불광제2동", "갈현제1동", "갈현제2동", "구산동", "대조동", "응암제1동", "역촌동", "신사제1동","신사제2동","증산동","수색동", "진관동"],			
           	"서대문구" : [ "충현동", "천연동", "북아현동", "신촌동", "연희동", "홍제제1동", "홍제제2동", "홍제제3동", "홍은제1동", "홍은제2동","남가좌제1동","남가좌제2동","북가좌제1동", "북가좌제2동"],			
           	"마포구" : [ "공덕동", "아현동", "도화동", "용강동", "대흥동", "염리동","신수동", "서강동", "서교동", "합정동","망원제1동","망원제2동","연남동", "성산제1동","성산제2동","상암동"],			
           	"양천구" : [ "목1동", "목2동", "목3동", "목4동", "목5동", "신월1동", "신월2동", "신월3동", "신월4동", "신월5동","신월6동","신월7동","신정1동", "신정2동","신정3동","신정4동","신정6동", "신정7동"],			
           	"강서구" : [ "염창동", "등촌제1동", "등촌제2동", "등촌제3동", "화곡본동", "화곡제1동", "화곡제2동", "화곡제3동", "화곡제4동", "화곡제6동","화곡제8동","우장산동","가양제1동", "가양제2동","가양제3동","발산제1동", "공항동", "빙화제1동", "방화제2동", "방화제3동"],			
           	"구로구" : [ "신도림동", "구로제1동", "구로제2동]", "구로제3동", "구로제4동", "구로제5동", "가리봉동", "고척제1동", "고척제2동", "개봉제1동","개봉제2동","개봉제3동","오류제1동", "오류제2동","항동","수궁동"],			
           	"금천구" : [ "가산동", "독산제1동", "독산제2동", "독산제3동", "독산제4동", "시흥제1동", "시흥제2동", "시흥제3동", "시흥제4동", "시흥제5동"],			
           	"영등포구" : [ "영등포본동", "영등포동", "여의동", "당산제1동", "당산제2동", "문래동", "양평제1동", "양평제2동", "신길제1동", "신길제2동","신길제3동","신길제4동","신길제5동","신길제6동","신길제7동","대림제1동", "대림제2동", "대림제3동"],			
           	"동작구" : [ "노량진제1동", "노량진제2동", "상도제1동", "상도제2동", "상도제3동", "상도제4동", "흑석동", "사당제1동", "사당제2동", "사당제3동","사당제4동","사당제5동","대방동","신대방제1동","신대방동제2동"],			
           	"관악구" : [ "보라매동", "청림동", "행운동", "낙성대동", "중앙동", "인헌동", "남현동", "서원동", "신원동", "서림동","신사동","신림동","난향동","조원동","대학동", "은천동","성현동","청룡동","난곡동","삼성동","미성동"],			
           	"서초구" : [ "서초1동", "서초2동", "서초3동", "서초4동", "잠원동", "반포본동", "반포1동", "반포2동", "반포3동", "반포4동","방뱌본동","방배1동","방배2동","방배3동","방배4동", "양재1동","양재2동","내곡동"],			
           	"강남구" : [ "신사동", "논현1동", "논현2동", "압구정동", "청담동", "삼성1동", "삼성2동", "대치1동", "대치2동", "대치4동","역삼1동","역삼2동","도곡1동","도곡2동","개포1동", "개포2동","개포4동","세곡동","일원본등","일원1동","일원2동", "수서동"],			
           	"송파구" : [ "풍납1동", "풍남2동", "거여1동", "거여2동", "마천1동", "마천2동", "방이1동", "방이2동", "오륜동", "오금동","송파1동","송파2동","석촌동","삼정동","가락본동", "가락1동","가락2동","문정1동","문정2동","장지동","위례동", "잠실본동","잠실2동","잠실3동","잠실4동","잠실6동","잠실7동"],			
           	"강동구" : [ "강일동", "상일1동", "상일2동", "명일1동", "명일2동", "고독1동", "고독2동", "암사1동", "암사2동", "천호1동","천호2동","천호3동","성내1동","성내2동","성내3동", "길동","둔촌1동","둔촌2동"]			
           
        },
        "부산광역시" :{
            "연제구" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "대구광역시" :{
            "중구" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "인천광역시" :{
            "남동구" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "광주광역시" :{
            "동구" : [ "충장동", "동명동", "계림1동", "계림2동", "산수1동", "산수1동", "산수2동", "지산1동", "지산2동", "서남동", "학동", "학운동", "지원1동", "지원2동"],			
            "서구" : [ "양동", "양동3동", "농성1동", "농성2동", "광천동", "유덕동", "치평동", "상무1동", "상무2동", "화정1동", "화정2동", "화정3동", "화정4동", "서창동", "금호1동", "금호2동", "풍암동", "동천동" ]	,		
            "남구" : [ "양림동", "방림1동", "방림2동", "봉선1동", "봉선2동", "사직동", "월산동", "월산4동", "월산5동", "백운1동", "백운2동", "주월1동", "주월2동", "효덕동", "진월동", "송암동", "대촌동"]	,		
            "북구" : [ "중흥1동", "중흥2동", "중흥3동","중앙동", "임동", "신안동", "용봉동", "운암1동", "운암2동", "운암3동", "동림동", "우산동", "풍향동", "문화동", "문흥1동", "문흥2동", "두암1동", "두암2동","두암3동", "삼각동", "일곡동","매곡동","오치1동","오치2동", "석곡동", "건국동", "양산동", "신용동" ]	,		
            "광산구" : [ "송정1동", "송정2동", "도산동", "신흥동", "어룡동", "우산동", "월곡1동", "월곡2동", "비아동", "첨단1동", "첨단2동", "신가동", "운남동", "수완동", "하남동", "임곡동", "동곡동", "평동","삼도동", "본량동", "신창동" ]			
        },
        "대전광역시" :{
            "서구" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "울산광역시" :{
            "남구" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "세종특별자치시" :{
            "보람동" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "경기도" :{
            "수원시" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "강원도" :{
            "춘천시" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "충청북도" :{
            "청주시" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "충청남도" :{
            "홍성군" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "전라북도" :{
            "전주시" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "전라남도" :{
            "무안군" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "경상북도" :{
            "안동시" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "경상남도" :{
            "창원시" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        "제주특별자치도" :{
            "제주시" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
        },
        
    };

    for(i=0; i<$(target).length; i++){
        (function(z){
            var a1 = $(target).eq(z);
            var a2 = a1.next();
            var a3 = a2.next();

            //초기화
            init(a1, true);

            //권역 기본 생성
            var areaKeys1 = Object.keys(area);
            areaKeys1.forEach(function(Region){
                a1.append("<option value="+Region+">"+Region+"</option>");
            });

            //변경 이벤트
            $(a1).on("change", function(){
                init($(this), false);
                var Region = $(this).val();
                var keys = Object.keys(area[Region]);
                keys.forEach(function(Do){
                    a2.append("<option value="+Do+">"+Do+"</option>");    
                });
            });

            $(a2).on("change", function(){
                a3.empty().append("<option value=''>선택</option>");
                var Region = a1.val();
                var Do = $(this).val();
                var keys = Object.keys(area[Region][Do]);
                keys.forEach(function(SiGunGu){
                    a3.append("<option value="+area[Region][Do][SiGunGu]+">"+area[Region][Do][SiGunGu]+"</option>");    
                });
            });
        })(i);        

        function init(t, first){
        	
            first ? t.empty().append("<option value=''>시/도</option>") : "";
            t.next().empty().append("<option value=''>시/군/구</option>");
            t.next().next().empty().append("<option value=''>읍/면/동</option>");
        }
    }
}



</script>
		
</body>
</html>