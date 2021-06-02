<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>POST 방식 submit 데이터 처리</title>
	<script type="text/javascript" src="../../../js/lib/jquery-3.6.0.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			
		});
	</script>
</head>
<%
//한글이 깨지지 않게 하기 위해 인코딩 set메서드 사용
request.setCharacterEncoding("UTF-8");	//출처: https://fruitdev.tistory.com/64 [과일가게 개발자]
		
//오브젝트로 받아오기 때문에 형변환(캐스팅) 필요
String userName = (String)request.getAttribute("name");
System.out.println(userName);
String userAge = (String)request.getAttribute("age");
System.out.println(userAge);

String userNameP = request.getParameter("name");
String userAgeP = request.getParameter("age");
System.out.println(userNameP);
System.out.println(userAgeP);

/***** getParameter(), getAttribute() 비교 *****/
/*
	getParameter() - set메서드가 없음, setParameter()X
	getAttribute() - set메서드가 있음, setAttribute()O
	 				 setAttribute("~")메서드를 사용해야 get할 수 있다, object 리턴
	 				 
	우리는 set한 속성이 없으므로, getParameter()사용해서 값을 불러온다
*/

%>
<body>
	<p>로그인: <span id="userName"><%=userNameP %></span>님 <span id="userAge"><%=userAgeP %></span>살</p>
	<h1>Welcome to the Web Programming!</h1>
	<img src="../../../images/coffee.jpg">
	<p>
		언제든지 오셔서 질문이 있으시면 올려주세요.
		<em>환영합니다.</em>
	</p>
	<h2>내용</h2>
	<p>HTML5, CSS3, Javascript, jQuery, SQL, JSP, ...</p>
	<h2>기간</h2>
	<p>2021.03.10. - 2021.10.21.</p>
	<h2>장소</h2>
	<p>대덕인재개발원</p>
</body>
</html>