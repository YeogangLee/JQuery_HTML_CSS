/**
 * 빈칸인지 확인하는 함수
 * return true/false
 * val : 값(문자열)
 * ex) isEmpty("홍길동")
 * 
 * @param val
 * @returns
 */
function isEmpty(val) {
	val = val.trim();
	if(val == null || val.length == 0) { //undefined 도 체크 가능
		return true;
	}
	return false;
}

/**
 * 필수 입력 항목 검사하는 함수
 * @param strId
 * @param strInput
 * @returns
 */
function checkValue(strId, strInput) {
	var obj = document.getElementById(strId);
	
	if(isEmpty(obj.value)) {
		alert(strInput + "은(는) 필수 입력 항목입니다.");
		obj.focus();
		return false;
	}
	return true;
}

/**
 * 입력값 길이 검사하는 함수
 * @param strId
 * @param strName
 * @param min
 * @param max
 * @returns
 */
function checkValueLength(strId, strName, min, max) {
	var val = document.getElementById(strId).value;
	
	if(val.length < min || val.length > max) {
		alert(strName + "은(는) " + min + "자 이상 " + max + "자 이하로 입력 가능합니다.");
		document.getElementById(strId).focus();
		return false;
	} 	
	return true;
}