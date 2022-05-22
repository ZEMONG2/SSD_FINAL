<%@page import="com.ssa.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>SSD_mypage</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="resources/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@600&family=IBM+Plex+Sans+KR:wght@500&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/b269e2b2e2.js"
	crossorigin="anonymous"></script>

<!-- Libraries Stylesheet -->
<link href="resources/lib/animate/animate.min.css" rel="stylesheet">
<link href="resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/style.css" rel="stylesheet">
</head>

<body>
	<div class="container-xxl bg-white p-0">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->


		<!-- Navbar Start -->
		<div class="container-fluid nav-bar bg-transparent">
			<nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
				<a href="/main"
					class="navbar-brand d-flex align-items-center text-center">
					<div class="icon p-2 me-2">
						<i class="fa-solid fa-fire-extinguisher"></i>

					</div>
					<h1 class="m-0 text-primary">SSD</h1>
				</a>
				<button type="button" class="navbar-toggler"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">

					<div class="navbar-nav ms-auto">
						<a href="/main" class="nav-item nav-link">메인</a> <a href="/map"
							class="nav-item nav-link ">지도</a> <a href="/team"
							class="nav-item nav-link ">팀</a>
						<%-- <c:if test="${LoginVo.user_admin eq 'Y'}">
              <a href="/team_member" class="nav-item nav-link">대원관리</a>
              <!-- 관리자의 경우 끝 -->
              </c:if> --%>
						<!-- 모니터링 페이지 이동 예정 -->
						<!--  <a href="/monitoring" class="nav-item nav-link ">모니터링</a> -->
						<a href="/mypage" class="nav-item nav-link active">마이페이지</a>
						<c:if test="${LoginVo.user_admin eq 'Y'}">
							<a href="/change_info" class="nav-item nav-link">회원정보수정</a>
						</c:if>
						<a href="/boardList" class="nav-item nav-link">공지사항</a>
					</div>
					<div style="margin-top: 6px; margin-right: 20px;">
						<h6>${LoginVo.user_name }대원님환영합니다</h6>
					</div>
					<a href="/logout.do" class="btn btn-primary px-3 d-none d-lg-flex">Logout</a>
				</div>
			</nav>
		</div>
		<!-- Navbar End -->


		<!-- Header Start -->
		<div class="container-fluid header bg-white p-0">
			<div
				class="row g-0 align-items-center flex-column-reverse flex-md-row">
				<div class="col-md-6 p-5 mt-lg-5">
					<h1 class="display-10 animated fadeIn mb-4">필요한 순간,</h1>
					<h1 class="display-10 animated fadeIn mb-4">소방이 함께합니다.</h1>
					<nav aria-label="breadcrumb animated fadeIn"></nav>
				</div>
				<div class="col-md-6 animated fadeIn">
					<img class="img-fluid" src="resources/img/SSA_main2.png" alt="">
				</div>
			</div>
		</div>
		<!-- Header End -->


		<!-- Search Start -->
		<div class="container-fluid wow fadeIn bg-dark" data-wow-delay="0.1s"
			style="padding: 25px;">
			<div class="container bg-primary"
				style="display: flex; justify-content: center;"></div>
		</div>
		<!-- Search End -->


		<!-- Contact Start -->
		<div class="container-xxl py-5">
			<div class="container">
				<!-- <div class="text-center mx-auto mb-2 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Contact Us</h1>
                </div> -->
				<!-- 가운데로 -->
				<!-- About Start -->
				<div class="container-fluid pt-5  wow fadeInUp"
					data-wow-delay="0.2s">
					<div class="container">
						<!-- 내용 시작 -->
						<div class="testimonial-item  border-inner p-4 "
							style="display: flex; flex-direction: column; justify-content: center; align-items: center;">
							<c:if test="${!empty LoginVo}">
								<div class="d-flex align-items-center mb-3">
									<img class="img-fluid flex-shrink-0"
										src="resources/img/testimonial-1.jpg"
										style="width: 60px; height: 60px;">
									<div class="ps-3">
										<h4 class="text-primary text-uppercase mb-1">${LoginVo.user_name }</h4>
										<span>${LoginVo.user_rank }</span>
									</div>
								</div>
							</c:if>

							<div class="col-md-7 col-lg-8 ">
								<!-- form 태그 -->
								<form action="/change_info.do" method=POST class="reg_form">

									<!-- 지역 아코디언  -->
									<div class="accordion" id="accordionExample">
										<div class="accordion-item">
											<h2 class="accordion-header" id="headingOne">
												<button class="accordion-button" type="button"
													data-bs-toggle="collapse" data-bs-target="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne">
													지역</button>
											</h2>
											<div id="collapseOne"
												class="accordion-collapse collapse show">
												<!-- 아코디언 바디 -->
												<!-- 추가 : 시/도 를 누르면 해당 지역에 맞는 다음지역 출력하도록 해야함 -->
												<!-- 지역마다 시/군/구 , 읍/면/동 찾아서 넣어야함 -->
												<div class="accordion-body">
													<div style="display: flex; justify-content: center;">
														<select name="user_addressRegion" class="form-control"
															id="addressRegion1" disabled
															style="display: inline-block;">
															<option>${LoginVo.user_addressRegion }</option>
														</select> <select name="user_addressDo" class="form-control"
															id="addressDo1" disabled
															style="display: inline-block; margin-left: 10px;">
															<option>${LoginVo.user_addressDo }</option>
														</select> <select name="user_addressSiGunGu" class="form-control"
															disabled id="addressSiGunGu1"
															style="display: inline-block; margin-left: 10px;">
															<option>${LoginVo.user_addressSiGunGu }</option>
														</select> <br>
													</div>
													<!-- 소속 소방서도 드롭다운으로해서 위에 지역 선택시 그 지역에 있는 소방서만 추출되도록 해야함 -->
													<div class="form-group">
														<label for="fire_station_title">소방서</label> <input
															type="text" class="form-control" id="fire_station"
															name="user_fs" placeholder="소속 소방서를 입력하세요"
															readonly="readonly" value="${LoginVo.user_fs }">
													</div>



												</div>
												<br>
											</div>
										</div>
										<br>
										<!-- 소속팀 폼 -->
										<div class="user_team">
											<label for="user_team">소속 팀</label> <select name=user_team
												class="form-select" aria-label="Default select example">
												<option selected>소속 팀을 설정해주세요</option>
												<option value="1">구조1팀</option>
												<option value="2">구조2팀</option>
												<option value="3">구조3팀</option>
											</select>
										</div>



									</div>
									<br>
									<!-- 아이디 폼 -->
									<div class="form-group">
										<label for="userId_title">아이디</label> <input type="id"
											class="form-control" name="user_id" id="userId"
											value="${LoginVo.user_id }" readonly> <small
											id="idhelp" class="form-text text-muted">4~12자 이내 영문
											소문자 숫자</small>
									</div>
									<br>
									<!-- 비밀번호 폼 -->

									<div class="form-group">
										<label for="passowrd_title">현재 비밀번호</label> <input
											type="password" class="form-control" name="user_pw"
											id="password" placeholder="현재 비밀번호를 입력해주세요">
									</div>
									<br>

									<div class="form-group">
										<label for="passowrd_title"> 새 비밀번호</label> <input
											type="password" class="form-control" name="user_pwCheck1"
											id="passwordCheck1" placeholder="변경할 비밀번호를 입력해주세요">
									</div>
									<br>
									<!-- 비밀번호 재확인 폼 -->
									<div class="form-group">
										<label for="passwordCheck_title">새 비밀번호 확인</label> <input
											type="password" class="form-control" name="user_pwCheck2"
											id="passwordCheck2" placeholder="변경할 비밀번호를 다시 입력해주세요">
									</div>
									<br>
									<!-- 이름 폼 -->
									<div class="form-group">
										<label for="userName_title">이름</label> <input type="text"
											class="form-control" id="userName" name="user_name"
											readonly="readonly" value="${LoginVo.user_name }">
									</div>
									<br>

									<!-- 생년월일 폼  -->
									<!-- 년도는 다 넣기 귀찮아서 나중에 이클립스로 다시 연동할 때 for문으로 돌릴예정 -->
									<!-- 월 선택 시 그 월에 맞는 일수가 나오도록 해야함 -->
									<label class="form-label mt-4">생년월일</label>
									
									<div style="display:flex;">
									<div class="bir_yy col-sm-4">
										<select disabled class="form-control" name="user_birthdate">
											<option disabled="disabled">년도</option>
											<%
											for (int i = 2022; i >= 1900; i--) {
											%>
											<option value="<%=i%>"><%=i%>년
											</option>
											<%
											}
											%>


										</select>
									</div>
									<div class="bir_mm col-sm-4">
										<select disabled class="form-control" name="user_birthdate">
											<option disabled="disabled">월</option>
											<%
											for (int j = 1; j <= 12; j++) {
											%>
											<option value="<%=j%>"><%=j%>월
											</option>
											<%
											}
											%>

										</select>
									</div>
									<div class="bir_dd col-sm-4">
										<select disabled class="form-control" name="user_birthdate">
											<option disabled="disabled">일</option>
											<%
											for (int j = 1; j <= 31; j++) {
											%>
											<option value="<%=j%>"><%=j%>일
											</option>
											<%
											}
											%>

										</select>


									</div>
									</div>


									<!-- 사용자 주소 폼 -->
									<label class="form-label mt-4">주소</label>
									<div>
										<input type="text" class="form-control"
											style="width: auto; display: inline" id="sample6_postcode"
											placeholder="우편번호"> <input type="button" class="btn"
											style="background-color: #F39C12; color: white; width: auto"
											onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
										<br> <input type="text" class="form-control"
											id="sample6_address" name="user_address" placeholder="주소"
											value="${LoginVo.user_address }"> <input type="text"
											class="form-control" id="sample6_detailAddress"
											name="user_address2" placeholder="상세주소"
											value="${LoginVo.user_address2 }">

									</div>
									<br>
									<!-- 성별 폼 -->
									<div>
										<label class="form-label mt-4">성별</label>
									</div>

									<div class="genderType" data-gender="${LoginVo.user_gender}">
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="gender"
												id="gender" value="men" disabled
												<c:if test="${LoginVo.user_gender eq 'men'}"><c:out value="checked" /></c:if> />
											<label class="form-check-label" for="inlineRadio1">남자</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="gender"
												id="gender" value="women" disabled
												<c:if test="${LoginVo.user_gender eq 'women'}"><c:out value="checked" /></c:if> />
											<label class="form-check-label" for="inlineRadio2">여자</label>
										</div>

									</div>
									<br>

									<!-- 혈액형 폼 -->

									<label class="form-label mt-4">혈액형</label>
									<div class="bloodType">
										<select disabled class="form-control" name="user_bloodtype">
											<option>${LoginVo.user_bloodtype }</option>

										</select>
									</div>


									<br> <br> <br>

									<!-- 가입 버튼 -->
									<div class="col-sm-12">
										<button class="btn btn-primary border-inner w-100 py-3"
											id="btnUpdate" type="submit">수정</button>
									</div>
								</form>
							</div>
						</div>
						<!-- 내용 끝 -->
					</div>
					<!-- <div class="col-md-6 ">
                        <div class="wow fadeInUp " data-wow-delay="0.5s">
                            <p class="mb-4">The contact form is currently inactive. Get a functional and working contact form with Ajax & PHP in a few minutes. Just copy and paste the files, add a little code and you're done. <a href="https://htmlcodex.com/contact-form">Download Now</a>.</p>
                            <form>
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="name" placeholder="Your Name">
                                            <label for="name">Your Name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="email" class="form-control" id="email" placeholder="Your Email">
                                            <label for="email">Your Email</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="subject" placeholder="Subject">
                                            <label for="subject">Subject</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" placeholder="Leave a message here" id="message" style="height: 150px"></textarea>
                                            <label for="message">Message</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Send Message</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div> -->
				</div>
			</div>

			<!-- Contact End -->


			<!-- Footer Start -->
			<div
				class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn"
				data-wow-delay="0.1s">
				<div class="container py-5">
					<div class="row g-5">
						<div class="col-lg-3 col-md-6">
							<h5 class="text-white mb-4">Contact</h5>
							<!--주소 넣기(백)-->
							<p class="mb-2">
								<i class="fa fa-map-marker-alt me-3"></i>주소 넣어주세요
							</p>
							<p class="mb-2">
								<i class="fa fa-phone-alt me-3"></i>+119
							</p>
							<div class="d-flex pt-2">
								<a class="btn btn-outline-light btn-social" href=""><i
									class="fab fa-twitter"></i></a> <a
									class="btn btn-outline-light btn-social" href=""><i
									class="fab fa-facebook-f"></i></a> <a
									class="btn btn-outline-light btn-social" href=""><i
									class="fab fa-youtube"></i></a> <a
									class="btn btn-outline-light btn-social" href=""><i
									class="fab fa-linkedin-in"></i></a>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<h5 class="text-white mb-4">Quick Links</h5>
							<a class="btn btn-link text-white-50" href="/main">메인</a> <a
								class="btn btn-link text-white-50" href="/map">지도</a> <a
								class="btn btn-link text-white-50" href="/team">팀</a> <a
								class="btn btn-link text-white-50" href="/mypage">마이페이지</a> <a
								class="btn btn-link text-white-50" href="/boardList">공지사항</a>
						</div>
						<div class="col-lg-3 col-md-6">
							<h5 class="text-white mb-4">Photo Gallery</h5>
							<div class="row g-2 pt-2">
								<div class="col-4">
									<img class="img-fluid rounded bg-light p-1"
										src="resources/img/SSA_fire.png" alt="">
								</div>
								<div class="col-4">
									<img class="img-fluid rounded bg-light p-1"
										src="resources/img/SSA_fire2.png" alt="">
								</div>
								<div class="col-4">
									<img class="img-fluid rounded bg-light p-1"
										src="resources/img/SSA_fire3.png" alt="">
								</div>
								<div class="col-4">
									<img class="img-fluid rounded bg-light p-1"
										src="resources/img/SSA_main4.png" alt="">
								</div>
								<div class="col-4">
									<img class="img-fluid rounded bg-light p-1"
										src="resources/img/SSA_main2.png" alt="">
								</div>
								<div class="col-4">
									<img class="img-fluid rounded bg-light p-1"
										src="resources/img/SSA_main3.png" alt="">
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6">
							<h5 class="text-white mb-4">Newsletter</h5>
							<p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
							<div class="position-relative mx-auto" style="max-width: 400px;">
								<input class="form-control bg-transparent w-100 py-3 ps-4 pe-5"
									type="text" placeholder="Your email">
								<button type="button"
									class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Footer End -->


			<!-- Back to Top -->
			<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
				class="bi bi-arrow-up"></i></a>
		</div>

		<!-- JavaScript Libraries -->
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="resources/lib/wow/wow.min.js"></script>
		<script src="resources/lib/easing/easing.min.js"></script>
		<script src="resources/lib/waypoints/waypoints.min.js"></script>
		<script src="resources/lib/owlcarousel/owl.carousel.min.js"></script>

		<!-- Template Javascript -->
		<script src="resources/js/main.js"></script>

		<!-- 우편번호 API  -->
		<script
			src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

		<script>
			function sample6_execDaumPostcode() {
				new daum.Postcode(
						{
							oncomplete : function(data) {
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
								if (data.userSelectedType === 'R') {
									// 법정동명이 있을 경우 추가한다. (법정리는 제외)
									// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
									if (data.bname !== ''
											&& /[동|로|가]$/g.test(data.bname)) {
										extraAddr += data.bname;
									}
									// 건물명이 있고, 공동주택일 경우 추가한다.
									if (data.buildingName !== ''
											&& data.apartment === 'Y') {
										extraAddr += (extraAddr !== '' ? ', '
												+ data.buildingName
												: data.buildingName);
									}
									// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
									if (extraAddr !== '') {
										extraAddr = ' (' + extraAddr + ')';
									}
									// 조합된 참고항목을 해당 필드에 넣는다.

								} else {
									document
											.getElementById("sample6_extraAddress").value = '';
								}

								// 우편번호와 주소 정보를 해당 필드에 넣는다.
								document.getElementById('sample6_postcode').value = data.zonecode;
								document.getElementById("sample6_address").value = addr;
								// 커서를 상세주소 필드로 이동한다.
								document
										.getElementById("sample6_detailAddress")
										.focus();
							}
						}).open();
			}
		</script>
</body>

</html>