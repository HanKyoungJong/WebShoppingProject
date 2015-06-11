<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resource/css/longin.css" />
</head>
<body>
	<table class="table">
		<caption>게시판 리스트</caption>
		<colgroup>
			<col width="8%" />
			<col width="10%" />
			<col width="8%" />
			<col width="10%" />
		</colgroup>
		<form>
			<input type="button" onClick="location.href='signup'" value="회원가입">
			<input type="button" onClick="location.href='login'" value="로그인">
		</form>
		<thead>
			<tr>
				<th scope="col">상품이미지</th>
				<th scope="col">상품명</th>
				<th scope="col">가격</th>
				<th scope="col">판매자</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><img src="#" /></td>
				<td>품질좋은 A 20%</td>
				<td>50000</td>
				<td>(주)제주대학교</td>

			</tr>
		</tbody>
	</table>
</body>
</html>