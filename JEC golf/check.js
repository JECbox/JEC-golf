function add(){
	if(frm.resist_month.value.length == 0){
		alert("수강월이 입력되지 않았습니다.");
		frm.resist_month.focus();
		return false;
	}
	else if(frm.c_name.value == 0){
		alert("회원명이 입력되지 않았습니다.");
		frm.c_name.focus();
		return false;
	}else if(frm.class_area[0].checked = false &&
	frm.class_area[1].checked == false &&
	frm.class_area[2].checked == false &&
	frm.class_area[3].checked == false &&
	frm.class_area[4].checked == false ){
		alert("강의장소가 선택되지 않았습니다.");
		return false;
	}else if(frm.class_name.value==0){
		alert("강의명이 선택되지 않았습니다.");
		frm.class.name.focus();
		return false;
	}else{
		alert("수강신청이 완료되었습니다.");
		document.frm.submit();
		return true;
	}
}
function res(){
	alert("수강신청이 취소되었습니다.")
	document.frm.reset();
}

function getvalue(c_no){
	document.getElementById("c_no").value = c_no;
	c_no2 = c_no;
}

function getvalue2(tuition){
	if(c_no2 >= 20000)
		document.getElementById("tuition").value = tuition/2;
	else
		document.getElementById("tuition").value = tuition
}









