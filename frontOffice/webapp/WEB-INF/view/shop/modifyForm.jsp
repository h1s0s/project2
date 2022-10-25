<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 설명</title>
	<!-- CSS-->
	<link href="${pageContext.request.contextPath}/webapp/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/webapp/assets/css/writeForm.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

	<!-- JS -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/webapp/assets/js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/webapp/assets/bootstrap/js/bootstrap.js"></script>
</head>
<body>
	<c:import url="/webapp/WEB-INF/view/includes/header.jsp"></c:import>
	<div id="wrap">
		<div id="container" class="clearfix">
			<c:import url="/webapp/WEB-INF/view/includes/aside.jsp"></c:import>
			<div id="content">
				<div id="content-head" >
					<div id="location" class="clearfix">
						<ul>
							<li>마이페이지</li>
							<li>내 쇼핑</li>
							<li class="last">상품 등록</li>
						</ul>
					</div>
					<h1>상품 등록</h1>
				</div><!-- //content-head -->
				<div id="content-main">
					<!-- //content-head -->
					<div id="board">
						<div id="writeForm">
								<!-- 상품명  -->
								<form id="form-image" action="${pageContext.request.contextPath}/shop/write" method="post" enctype="multipart/form-data">
								
								<div class="form-group">
									<label class="form-text" for="txt-title">상품명<span class="label label-danger">필수</span></label> <input type="text" id="txt-title" name="title" value="" placeholder="상품명을 입력해 주세요">
								</div>
								<!-- 판매가  -->
								<div class="form-group">
									<label class="form-text" for="txt-cost">판매가<span class="label label-danger">필수</span></label> <input type="text" id="txt-cost" name="cost" value="" placeholder="가격을 입력해 주세요">
								</div>
								<!-- 카테고리  -->
								<div class="form-group">
									<label class="form-text" for="txt-category">카테고리</label> <input type="text" id="txt-category" name="category" value="" placeholder="카테고리를 입력해 주세요(사료, 간식, 용품)">
								</div>
								<!-- 재고  -->
								<div class="form-group">
									<label class="form-text" for="txt-ea">재고</label> <input type="text" id="txt-ea" name="ea" value="" placeholder="재고를 입력해 주세요">
								</div>
								<!-- 이미지  -->
									<div class="form-group">
										<label class="form-text" for="txt-image">대표이미지</label> <input type="file" id="txt-image" name="file" value="" placeholder="제목을 입력해 주세요">
									</div>
								
								<!-- 상품요약설명  -->
								<div class="form-group">
									<label class="form-text" for="txt-info">상품설명</label> <textarea name="info" id="txt-info"></textarea>
								</div>
								<a id="btn_cancel" href="">취소</a>
								<button id="btn_add" type="submit">등록</button>
								<input type="hidden" name="usersNo" value="1004">
							</form>
							<!-- //form -->
						</div>
						<!-- //writeForm -->
					</div>
					<!-- //board -->
				</div><!-- //content-main -->
			</div><!-- //content -->
		</div><!-- //container -->
	</div><!-- //wrap -->
	<c:import url="/webapp/WEB-INF/view/includes/footer.jsp"></c:import>
</body>
<script>
	//등록버튼을 눌렀을때
/* 	$('#btn_add').on("click", function(){
		$.ajax({
			url : "${pageContext.request.contextPath}/shop/write",    
			type : "post",
			data : {
				title : $("#txt-title").val(),
				cost : $("#txt-cost").val(),
				category : $("#txt-category").val(),
				ea : $("#txt-ea").val(),
				image : $("#txt-image").val(),
				info : $("#txt-info").text() 
			},
			success : function(count) {
				window.location.replace("${pageContext.request.contextPath}/shop/list");
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		}); 
	}); */
</script>
</html>