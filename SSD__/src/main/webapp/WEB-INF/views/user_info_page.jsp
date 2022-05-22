<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SSD_user_info_page</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@600&family=IBM+Plex+Sans+KR:wght@500&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b269e2b2e2.js" crossorigin="anonymous"></script>

    <!-- Libraries Stylesheet -->
    <link href="resources/lib/animate/animate.min.css" rel="stylesheet">
    <link href="resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="resources/css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


     <!-- Navbar Start -->
      <div class="container-fluid nav-bar bg-transparent">
        <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
            <a href="/main" class="navbar-brand d-flex align-items-center text-center">
                <div class="icon p-2 me-2">
                    <i class="fa-solid fa-fire-extinguisher"></i>
                    
                </div>
                <h1 class="m-0 text-primary">SSD</h1>
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">

                <div class="navbar-nav ms-auto">
                    <a href="/main" class="nav-item nav-link  ">메인</a>
                    <a href="/map" class="nav-item nav-link ">지도</a>
                    <a href="/team_member" class="nav-item nav-link ">팀</a>
                    <%-- <c:if test="${LoginVo.user_admin eq 'Y'}">
              <a href="/team" class="nav-item nav-link">대원관리</a>
              <!-- 관리자의 경우 끝 -->
              </c:if> --%>
                    <!-- 모니터링 페이지 이동 예정 -->
                    <!-- <a href="/monitoring" class="nav-item nav-link">모니터링</a> -->
                    <a href="/mypage" class="nav-item nav-link">마이페이지</a>
                    <c:if test="${LoginVo.user_admin eq 'Y'}">
                    <a href="/change_info" class="nav-item nav-link">회원정보수정</a>
                    </c:if>
                    <a href="/boardList" class="nav-item nav-link">공지사항</a>
                </div>
                <div style="margin-top:6px; margin-right:20px;">
                <h6>${LoginVo.user_name } 대원님 환영합니다</h6>
                </div>
                <a href="/logout.do" class="btn btn-primary px-3 d-none d-lg-flex">Logout</a>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->


        <!-- Header Start -->
        <div class="container-fluid header bg-white p-0">
            <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
                <div class="col-md-6 p-5 mt-lg-5">
                    <!-- 소방서 이름-백앤드 -->
                    <c:if test="${!empty LoginVo}">
                    <h1 class="display-5 animated fadeIn mb-4">${LoginVo.user_fs }</h1> 
                    </c:if>
                        <nav aria-label="breadcrumb animated fadeIn">
                    </nav>
                </div>
                <div class="col-md-6 animated fadeIn">
                    <img class="img-fluid" src="img/SSA_main1.png" alt="">
                </div>
            </div>
        </div>
        <!-- Header End -->


    <!-- Search Start -->
    <div class="container-fluid wow fadeIn bg-dark" data-wow-delay="0.1s" style="padding: 25px; ">
        <div class="container bg-primary"  style="display: flex; justify-content: center;">
        
        </div>
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
    <div class="container-fluid pt-5  wow fadeInUp" data-wow-delay="0.3s" style="width: 50%;">
        <div class="container">
           <!-- 내용 시작 -->
           <div class="testimonial-item  border-inner p-4 " style="display:flex;flex-direction: column; justify-content: center; align-items: center; "  >
            <div class="d-flex align-items-center mb-3">
                <img class="img-fluid flex-shrink-0" src="img/testimonial-1.jpg" style="width: 60px; height: 60px;">
                <div class="ps-3">
                    <h4 class="text-primary text-uppercase mb-1">Client Name</h4>
                    <span>Profession</span>
                </div>
            </div>
            
            <div class="col-md-7 col-lg-8 ">
                <h4 class="mb-3">Billing address</h4>
            <!-- form 태그 -->
            <form action="#" method = GET class ="reg_form">

             <!-- 지역 아코디언  -->
                <div class="accordion" id="accordionExample">
                     <div class="accordion-item">
                        <h2 class="accordion-header" id="headingOne">
                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    지역
                </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show">
                <!-- 아코디언 바디 -->
                <!-- 추가 : 시/도 를 누르면 해당 지역에 맞는 다음지역 출력하도록 해야함 -->
                <!-- 지역마다 시/군/구 , 읍/면/동 찾아서 넣어야함 -->
                <div class="accordion-body">
                    <div class="location_city">
                        <select class="form-control">
                            <option>시/도</option>
                            <option value="서울특별시">서울특별시</option>
                            <option value="부산광역시">부산광역시</option>
                            <option value="대구광역시">대구광역시</option>
                            <option value="인천광역시">인천광역시</option>
                            <option value="광주광역시">광주광역시</option>
                            <option value="대전광역시">대전광역시</option>
                            <option value="울산광역시">울산광역시</option>
                            <option value="세종특별자치시">세종특별자치시</option>
                            <option value="경기도">경기도</option>
                            <option value="강원도">강원도</option>
                            <option value="충청북도">충청북도</option>
                            <option value="충청남도">충청남도</option>
                            <option value="전라북도">전라북도</option>
                            <option value="전라남도">전라남도</option>
                            <option value="경상북도">경상북도</option>
                            <option value="경상남도">경상남도</option>
                            <option value="제주특별자치도">제주특별자치도</option>
                        </select>
                    </div>
                    <div class="location_county">
                        <select class="form-control">
                            <option>시/군/구</option>
                            <option>...</option>

                        </select>
                    </div>
                    <div class="location_town">
                        <select class="form-control">
                            <option>읍/면/동</option>
                            <option>...</option>


                        </select>


                    </div><br>

                    <!-- 소속 소방서도 드롭다운으로해서 위에 지역 선택시 그 지역에 있는 소방서만 추출되도록 해야함 -->
                    <div class="form-group">
                        <label for="fire_station_title">소방서</label>
                        <input type="text" class="form-control" id="fire_station"
                            placeholder="소속 소방서를 입력하세요" >
                    </div>



                </div><br>
            </div>
        </div>

    </div><br>
    <!-- 아이디 폼 -->
    <div class="form-group">
        <label for="userId_title">아이디</label>
        <input type="id" class="form-control" id="userId" placeholder="아이디를 입력해주세요" readonly>
        <small id="idhelp" class="form-text text-muted">4~12자 이내 영문 소문자 숫자</small>
    </div><br>
    <!-- 비밀번호 폼 -->
    <div class="form-group">
        <label for="passowrd_title">비밀번호</label>
        <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력해주세요">
    </div><br>
    <!-- 비밀번호 재확인 폼 -->
    <div class="form-group">
        <label for="passwordCheck_title">비밀번호 확인</label>
        <input type="password" class="form-control" id="passwordCheck" placeholder="비밀번호를 다시 입력해주세요">
    </div><br>
    <!-- 이름 폼 -->
    <div class="form-group">
        <label for="userName_title">이름</label>
        <input type="text" class="form-control" id="userName" placeholder="이름을 입력하세요">
    </div>

    <!-- 생년월일 폼  -->
    <!-- 년도는 다 넣기 귀찮아서 나중에 이클립스로 다시 연동할 때 for문으로 돌릴예정 -->
    <!-- 월 선택 시 그 월에 맞는 일수가 나오도록 해야함 -->
    <!--  -->
    <label class="form-label mt-4">생년월일</label>
    <div class="bir_yy">
        <select class="form-control" disabled>
            <option>년도</option>
            <option value="2022">2022</option>
            <option value="2021">2021</option>
            <option value="2020">2020</option>
            <option value="2019">2019</option>
            <option value="2018">2018</option>
            <option value="2017">2017</option>
            <option value="2016">2016</option>
            <option value="2015">2015</option>
            <option value="2014">2014</option>
            <option value="2013">2013</option>
            <option value="2012">2012</option>
            <option value="2011">2011</option>
            <option value="2010">2010</option>
            <option value="2009">2009</option>
            <option value="2008">2008</option>
            <option value="2007">2007</option>
            <option value="2006">2006</option>
            <option value="2005">2005</option>

        </select>
    </div>
    <div class="bir_mm">
        <select class="form-control" disabled>
            <option>월</option>
            <option value="m_1">1</option>
            <option value="m_2">2</option>
            <option value="m_3">3</option>
            <option value="m_4">4</option>
            <option value="m_5">5</option>
            <option value="m_6">6</option>
            <option value="m_7">7</option>
            <option value="m_8">8</option>
            <option value="m_9">9</option>
            <option value="m_10">10</option>
            <option value="m_11">11</option>
            <option value="m_12">12</option>

        </select>
    </div>
    <div class="bir_dd">
        <select class="form-control" disabled>
            <option>일</option>
            <option value="d_1">1</option>
            <option value="d_2">2</option>
            <option value="d_3">3</option>
            <option value="d_4">4</option>
            <option value="d_5">5</option>
            <option value="d_6">6</option>
            <option value="d_7">7</option>
            <option value="d_8">8</option>
            <option value="d_9">9</option>
            <option value="d_10">10</option>
            <option value="d_11">11</option>
            <option value="d_12">12</option>
            <option value="d_13">13</option>
            <option value="d_14">14</option>
            <option value="d_15">15</option>
            <option value="d_16">16</option>
            <option value="d_17">17</option>
            <option value="d_18">18</option>
            <option value="d_19">19</option>
            <option value="d_20">20</option>
            <option value="d_21">21</option>
            <option value="d_22">22</option>
            <option value="d_23">23</option>
            <option value="d_24">24</option>
            <option value="d_25">25</option>
            <option value="d_26">26</option>
            <option value="d_27">27</option>
            <option value="d_28">28</option>
            <option value="d_29">29</option>
            <option value="d_30">30</option>
            <option value="d_31">31</option>


        </select>


    </div>
    <!-- 사용자 주소 폼 -->
    <label class="form-label mt-4">주소</label>
    <div class="location_city">
        <select class="form-control">
            <option>시/도</option>
            <option value="서울특별시">서울특별시</option>
            <option value="부산광역시">부산광역시</option>
            <option value="대구광역시">대구광역시</option>
            <option value="인천광역시">인천광역시</option>
            <option value="광주광역시">광주광역시</option>
            <option value="대전광역시">대전광역시</option>
            <option value="울산광역시">울산광역시</option>
            <option value="세종특별자치시">세종특별자치시</option>
            <option value="경기도">경기도</option>
            <option value="강원도">강원도</option>
            <option value="충청북도">충청북도</option>
            <option value="충청남도">충청남도</option>
            <option value="전라북도">전라북도</option>
            <option value="전라남도">전라남도</option>
            <option value="경상북도">경상북도</option>
            <option value="경상남도">경상남도</option>
            <option value="제주특별자치도">제주특별자치도</option>

        </select>
    </div>
    <div class="location_county">
        <select class="form-control">
            <option>시/군/구</option>
            <option>...</option>

        </select>
    </div>
    <div class="location_town">
        <select class="form-control">
            <option>읍/면/동</option>
            <option>...</option>


        </select>


    </div><br>
    <div class="form-group">
        <label for="fire_station_title">상세주소</label>
        <input type="text" class="form-control" id="detailAddress"
            placeholder="상세주소를 입력해주세요" >
    </div>
        
    </div>

    <!-- 성별 폼 -->
    <div>
        <label class="form-label mt-4">성별</label>
    </div>

    <div class="genderType">
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="gender" id="gender"
                value="men">
            <label class="form-check-label" for="inlineRadio1">남자</label>
        </div>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="gender" id="gender"
                value="women">
            <label class="form-check-label" for="inlineRadio2">여자</label>
        </div>

    </div><br>

    <!-- 혈액형 폼 -->

    <label class="form-label mt-4">혈액형</label>
    <div class="bloodType">
        <select class="form-control">
            <option>선택</option>
            <option value="A">A형</option>
            <option value="AB">AB형</option>
            <option value="B">B형</option>
            <option value="O">O형</option>


        </select>
    </div><br><br><br>

    <!-- 가입 버튼 -->
    <div class="col-sm-12">
        <button class="btn btn-primary border-inner w-100 py-3" type="submit">수정</button>
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
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Contact</h5>
                        <!--주소 넣기(백)-->
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>주소 넣어주세요</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+119</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Quick Links</h5>
 						<a class="btn btn-link text-white-50" href="/main">메인</a>
                        <a class="btn btn-link text-white-50" href="/map">지도</a>
                        <a class="btn btn-link text-white-50" href="/team">팀</a>
                        <a class="btn btn-link text-white-50" href="/mypage">마이페이지</a>
                        <a class="btn btn-link text-white-50" href="/boardList">공지사항</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Photo Gallery</h5>
                        <div class="row g-2 pt-2">
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="resources/img/SSA_fire.png" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="resources/img/SSA_fire2.png" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="resources/img/SSA_fire3.png" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="resources/img/SSA_main4.png" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="resources/img/SSA_main2.png" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="resources/img/SSA_main3.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Newsletter</h5>
                        <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                        <div class="position-relative mx-auto" style="max-width: 400px;">
                            <input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                            <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="resources/lib/wow/wow.min.js"></script>
    <script src="resources/lib/easing/easing.min.js"></script>
    <script src="resources/lib/waypoints/waypoints.min.js"></script>
    <script src="resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="resources/js/main.js"></script>
</body>

</html>