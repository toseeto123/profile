<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.104.2">
<title>Checkout example · Bootstrap v5.2</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/checkout/">





<link
	href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}
</style>


<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/resources/static/css/form-validation.css"
	rel="stylesheet">
</head>
<body class="bg-light">

	<div class="container">
		<main>
		<div class="py-5 text-center">
			<h2>회원 가입 페이지</h2>
			<p class="lead">필수 입력 사항은 반드시 입력해주시기 바랍니다.</p>
		</div>

		<div class="py-5 text-left">

			<div class="col-md-15">
				<h4 class="mb-3 ">회원 가입 정보</h4>
				<br>
				<form class="needs-validation" action="/users/userlist"
					method="post" novalidate>
					<div class="row g-3">
						<div class="col-sm-15">
							<label for="userName" class="form-label">이름</label> <input
								type="text" class="form-control" name="userName" placeholder=""
								value="" required>
							<div class="invalid-feedback">반드시 이름을 입력해주세요.</div>
						</div>


						<div class="col-9">
							<label for="username" class="form-label">아이디</label>
							<div class="input-group has-validation">
								<input type="text" class="userId" name="userId"
									placeholder="Username" required>
								<div class="invalid-feedback">아이디는 필수입력 사항입니다.</div>
							</div>
						</div>
						
						<div class="col-3">
							<label for="username" class="form-label"></label>
							<div>
							 <button class="w-100 btn btn-primary btn-lg" onclick="id_check()">중복확인</button>
							</div>
						</div>

						<div class="col-12">
							<label for="userPassword" class="form-label">비밀번호</label>
							<div class="input-group has-validation">
								<input type="password" class="form-control" name="userPassword"
									placeholder="비밀번호" required>
								<div class="invalid-feedback">비밀번호는 필수 입력 사항입니다.</div>
							</div>
						</div>

						<div class="col-12">
							<label for="passwordCheck" class="form-label">비밀번호확인</label>
							<div class="input-group has-validation">
								<input type="password" class="form-control" name="passwordCheck"
									placeholder="비밀번호확인" required>
								<div class="invalid-feedback">입력한 비밀번호와 맞는지 확인해주세요.</div>
							</div>
						</div>

						<div class="col-12">
							<label for="email" class="form-label">Email <span
								class="text-muted">(필수 입력)</span></label> <input type="email"
								class="form-control" name="userEmail"
								placeholder="올바른 이메일 형식을 입력하세요" required>
							<div class="invalid-feedback">이메일 주소가 올바른지 확인해주세요</div>
						</div>

						<div class="col-12">
							<label for="phone" class="form-label">핸드폰 번호 <span
								class="text-muted">(필수 입력)</span></label> <input type="text"
								class="form-control" name="userPhone"
								placeholder="-는 제외한 번호를 입력해주세요" required>
							<div class="invalid-feedback">핸드폰 번호가 올바른지 확인해주세요</div>
						</div>

						<div class="col-12">
							<label for="skills" class="form-label">사용 스킬 <span
								class="text-muted">(필수 입력)</span></label> <input type="text"
								class="form-control" name="userSkill"
								placeholder="가지고 있는 대표 스킬 입력해주세요" required>
							<div class="invalid-feedback">스킬에 해당하는 내용을 입력해주세요.</div>
						</div>

						<div class="col-12">
							<label for="address" class="form-label">주소</label> <input
								type="text" class="form-control" name="userAddress"
								placeholder="무슨 동" required>
							<div class="invalid-feedback">현재 주소와 맞는지 다시 한번 확인해주세요</div>
						</div>


						<div class="col-sm-6">
							<span> <label for="address2" class="form-label">상세
									주소 <span class="text-muted">(Optional)</span>
							</label> <input type="text" class="form-control" name="userAddressDetail"
								placeholder="아파트 동수 혹은 빌라 이름">
							</span>
						</div>
						
						<div class="col-sm-4">
							<span> <label for="zip" class="form-label">우편번호</label> <input
								type="text" class="form-control" name="zip" placeholder="">
							</span>
						</div>
						
						<div class="col-sm-2" align="cetner">
						   <label></label>
							<button class="w-100 btn btn-primary btn-lg">주소 찾기</button>
						</div>



					</div>

					<hr class="my-4">

					<button style="margin-bottom: 5px"
						class="w-100 btn btn-primary btn-lg" type="submit">회원가입</button>
					<button class="w-100 btn btn-primary btn-lg" type="submit">가입취소</button>
				</form>
			</div>
		</div>
		</main>

		<footer class="my-5 pt-5 text-muted text-center text-small">
			<p class="mb-1">&copy; 2023 namsu</p>
			<ul class="list-inline">
				<li class="list-inline-item"><a href="#">Privacy</a></li>
				<li class="list-inline-item"><a href="#">Terms</a></li>
				<li class="list-inline-item"><a href="#">Support</a></li>
			</ul>
		</footer>
	</div>


	<script
		src="${pageContext.request.contextPath}/resources/static/js/bootstrap.bundle.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/static/js/form-validation.js"></script>
	
	<script>
	
	 $('.username_input').change(function () {
	      $('#id_check_sucess').hide();
	      $('.id_overlap_button').show();
	      $('.username_input').attr("check_result", "fail");
	    })
	    
	</script>

</body>
</html>