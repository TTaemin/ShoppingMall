<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a");
%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../include/header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/styles/categories_styles.css'/>">
</head>
<body>
	<div style="width:1200px;margin-left:auto;margin-right:auto">
		<div class="sidebar" style="margin-left:50px;">
			<div class="sidebar_section">
				<div class="sidebar_title">
					<h5>판매자 페이지</h5>
				</div>
				<ul class="sidebar_categories">
					<li><a href="<c:url value='/seller/prodWrite'/>">상품 등록하기</a></li>
					<li><a href="<c:url value='/seller/prodList'/>">상품조회/수정하기</a></li>
					<li><a href="<c:url value='/seller/newOrder'/>">신규주문</a></li>
					<li><a href="<c:url value='/seller/send'/>">발송처리</a></li>
					<li><a href="<c:url value='/seller/sendStat'/>">배송중/완료</a></li>
					<li><a href="<c:url value='/seller/confirmOrder'/>">구매결정 완료</a></li>
					<li><a href="<c:url value='/seller/query'/>">문의사항 관리</a></li>
				</ul>
			</div>
		</div>
		<div class="table-wrapper" style="margin-left:250px;margin-top:200px;margin-bottom:300px;overflow-x:auto;max-width:70% ">
			<h4>상품 등록</h4>
			<br><br>
			<form action="${pageContext.request.contextPath}/seller/prodWrite" method="post" enctype="multipart/form-data">
			<input type="hidden" name="sellerSeq" value="${login.sellerSeq }">
			<table style="width:100%;" border="1">
				<tr>
					<td style="width: 100px">카테고리</td>
					<td>
						<select name="category">
						<option value="" selected disabled hidden>선택해주세요.</option>
						<option value="패션">패션</option>
						<option value="잡화">잡화</option>
						<option value="뷰티">뷰티</option>
						<option value="주방">주방</option>
						<option value="가전디지털">가전디지털</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>제품명</td>
					<td><input type="text" name="prodName"></td>
				</tr>
				<tr>
					<td>제품사진</td>
					<td>
						<div class="inputArea">
						 	<input type="file" id="photoUrl" name="file" />
						</div>
					</td>
				</tr>
				<tr>
					<td>제품정보</td>
					<td><textarea name="prodInfo"></textarea></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="text" name="price"></td>
				</tr>
				<tr>
					<td>할인가격</td>
					<td><input type="text" name="discount"></td>
				</tr>
				<tr>
					<td>배송비</td>
					<td><input type="text" name="shippingCharge"></td>
				</tr>
				<tr>
					<td>재고수량</td>
					<td><input type="text" name="stockNumber"></td>
				</tr>
			</table>
			<input type="submit" value="등록">
			</form>
		</div>
	</div>
</body>
</html>
<jsp:include page="../include/footer.jsp" />