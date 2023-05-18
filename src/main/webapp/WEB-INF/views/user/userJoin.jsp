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

#pwckSuccess {
	color: green;
	display: none;
}

#pwckFail {
	color: red;
	display: none;
}
</style>

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

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
					method="post" onsubmit="submitForm()" novalidate>
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
								<input type="text" name="userId" id="userId"
									placeholder="아이디 입력해주세요" required>
								<div class="invalid-feedback">아이디는 필수입력 사항입니다.</div>
							</div>
						</div>

						<div class="col-3">
							<label for="username" class="form-label"></label>
							<div>
								<button class="w-100 btn btn-primary btn-lg" id="idck"
									type="button" onclick="idCheck()">중복확인</button>
							</div>
						</div>

						<div class="col-12">
							<label for="userPassword" class="form-label">비밀번호</label>
							<div class="input-group has-validation">
								<input type="password" class="form-control" name="userPassword"
									id="userPassword" placeholder="비밀번호" autoComplete="off"
							   		required>
								<div class="invalid-feedback">비밀번호는 필수 입력 사항입니다.</div>
							</div>
						</div>

						<div class="col-12">
							<label for="passwordCheck" class="form-label">비밀번호확인</label>
							<div class="input-group has-validation">
								<input type="password" class="form-control" name="passwordCheck"
									id="passwordCheck" placeholder="비밀번호확인" autoComplete="off"
									required>
							</div>
							<div>
								<span id="finalPassCheck">비밀번호 확인을 입력해주세요.</span> <span
									id="pwckSuccess">비밀번호가 일치합니다.</span> <span id="pwckFail">비밀번호가
									일치하지 않습니다.</span>
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
								type="text" class="form-control" name="basicAddress"
								id="basicAddress" placeholder="무슨 동" required>
							<div class="invalid-feedback">현재 주소와 맞는지 다시 한번 확인해주세요</div>
						</div>


						<div class="col-sm-6">
							<span> <label for="address2" class="form-label">상세
									주소 <span class="text-muted">(Optional)</span>
							</label> <input type="text" class="form-control" name="userAddressDetail"
								id="userAddressDetail" placeholder="아파트 동수 혹은 빌라 이름">
							</span>
						</div>

						<div class="col-sm-4">
							<span> <label for="zip" class="form-label">우편번호</label> <input
								type="text" class="form-control" id="zip" name="zip"
								placeholder="">
							</span>
						</div>

						<div class="col-sm-2" align="cetner">
							<label></label>
							<button class="w-100 btn btn-primary btn-lg" type="button"
								onclick="DaumPostcode()">주소 찾기</button>
						</div>

						<input type="hidden" id="userAddress" name="userAddress">
					</div>

					<hr class="my-4">

					<button style="margin-bottom: 5px"
						class="w-100 btn btn-primary btn-lg" type="submit" id="join">회원가입</button>
					<button class="w-100 btn btn-primary btn-lg" type="reset">가입취소</button>
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

	<script type="text/javascript">
	
	 var idck=0;
	 function idCheck() {
		        var userId =  $("#userId").val(); 
		        
		        $.ajax({
		            async: true,
		            type : 'POST',
		            data : userId,
		            url : "/users/idcheck",
		            dataType : "json",
		            contentType: "application/json; charset=UTF-8",
		            success : function(data) {
		                if (data.cnt > 0) {
		                    alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
		                    $("#userId").focus();
		                } else {
		                    alert("사용가능한 아이디입니다.");
		                    $("#userPassword").focus();
		                    idck = 1;
		                }
		            },
		            error : function(error) {
		                alert("error : " + error);
		            }
		        });
		};
	</script>

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<script>
	//팝업창 위치 조정을 위한 width,height
	var width = 500; 
	var height = 600;
    function DaumPostcode() {
        new daum.Postcode({
        	width: width,
        	height: height,
            oncomplete: function(data) {
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
                    document.getElementById("userAddressDetail").value = extraAddr;
                
                } else {
                    document.getElementById("userAddressDetail").value = '';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip').value = data.zonecode;
                document.getElementById("basicAddress").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("userAddressDetail").focus();
            }
        }).open({
        	//팝업창 위치조절 사이
        	left: (window.innerWidth/ 2) - (width / 2),
            top: (window.innerHeight/ 2) - (height / 2)
        });
    }
</script>

<script>
 $(function(){
    $('#passwordCheck').keyup(function(){
      var passwd = $('#userPassword').val();
      var passwdck = $('#passwordCheck').val();
      $('#finalPassCheck').css('display','none'); 
      
      if (passwd == passwdck){
        $('#pwckSuccess').css('display','block');
        $('#pwckFail').css('display','none');
      } else {
        $('#pwckSuccess').css('display','none');
        $('#pwckFail').css('display','block');
      }
    });
 });
</script>
	<script>
  function submitForm() {
    var basicAddress = document.getElementById('basicAddress').value;
    var userAddressDetail = document.getElementById('userAddressDetail').value;
    var zip = document.getElementById('zip').value;
    
    var userAddress = basicAddress + ' ' + userAddressDetail + ' ' + zip;
    
    // form 태그에 값을 설정하여 전송
    document.getElementById('userAddress').value = userAddress;
    console.log(userAddress);
    
  }
</script>
	<script>
	 $('#userPassword').blur(function(){
		 var passwd = $('#userPassword').val();
	     var passwdck = $('#passwordCheck').val();
			const exp2 = /^(?=.*[a-z])(?=.*\d)(?=.*[-_!*])[a-z\d-_!*]{8,20}$/; 

			if(passwd.match(exp2)){
				 alert("올바른 비밀번호입니다.")
				 $("#passwordCheck").focus();
				 return;
			}else{
				alert('8~20자리 소문자, 특수기호(-_!*), 숫자 포함해주세요');
				 $("#userPassword").focus();
				 return;
			}
		});
</script>
</body>
</html>