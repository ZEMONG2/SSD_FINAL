<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!doctype html>
<html lang="en">

<head>

  <title>SSA_login</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, init
  ial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!-- 아이콘 -->
  <script src="https://kit.fontawesome.com/b269e2b2e2.js" crossorigin="anonymous"></script>
  <!-- CSS코드 -->
  <link rel="stylesheet" href="resources/css/SSA.css">
  


  

</head>

<body class="login_body">


	<div class="container w-75 bg-primary mt -5 rounded">
		<div class="row align-items-stretch">
			<div
				class="col bg d-none d-lg-block col-md-5 col-lg-5 col-xl-6 rounded-end">
				<img class="img_119_2" src="./resources/img/119char.jpg">
			</div>

			<div class="col bg-white p-5">
				<div class="card">
					<div class="card-body">


						<div class="img_119">
							<br> <img class="login_img"
								src="./resources/img/119 Logo.png">
						</div>

						<!-- login -->
						<form action="login" method="post" class="login_form">

							<!-- id -->
							<div class="input-group input-group-lg">
								<span class="input-group-text" id="inputGroup-sizing-lg">
									<i class="fa-solid fa-user-large"></i>
								</span> <input type="text" class="form-control"
									aria-label="Sizing example input"
									aria-describedby="inputGroup-sizing-lg" name="user_id"
									placeholder="아이디를 입력해주세요">
							</div>
							<!-- pw -->
							<div class="input-group input-group-lg">
								<span class="input-group-text" id="inputGroup-sizing-lg"><i
									class="fa-solid fa-key"></i></span> <input type="password"
									class="form-control" aria-label="Sizing example input"
									aria-describedby="inputGroup-sizing-lg" name="user_pw"
									placeholder="비밀번호를 입력해주세요">
							</div>


							<div class="d-grid">
								<button type="submit" class="btn text-white btn-lg">로그인</button>
							</div>


							<div class="login_append">
								
									<a href="/register" class="link_find">회원가입</a>
									<span class="txt_find"> 
									<a href="#" class="link_find">아이디</a> 
									<a href="#" class="link_find">비밀번호 찾기</a> </span>
									
							</div>


						</form>

					</div>
				</div>

			</div>
		</div>
	</div>

	
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>


</body>

</html> 