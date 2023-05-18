// Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles
	// to
  const forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()

function checkPassword(userId,userPassword){
	var userId = document.getElementbyId(userId).value();
	var userPassword = document.getElementById(userPassword).value();
	if(!/^[a-zA-Z0-9]{10,15}$/.test(userPassword)){
	alert('숫자와 영문자 조합으로 10~15자리를 사용해야 합니다.');
	return false;
}
var checkNumber = userPassword.search(/[0-9]/g);
var checkEnglish = userPassword.search(/[a-z]/ig);

if(checkNumber <0 || checkEnglish <0){
	alert("숫자와 영문자를 혼용하여야 합니다.");
	return false;
}
if(/(\w)\1\1\1/.test(userPassword)){
	alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
return false;
}
if(password.search(userId) > -1){
	alert("비밀번호에 아이디가 포함되었습니다.");
	return false;
}
	return true;

}