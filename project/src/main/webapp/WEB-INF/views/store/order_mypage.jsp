<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="ko">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">

	<meta name="author" content="themefisher.com">

	<title>mypage</title>

	<!-- bootstrap.min css -->
	<link rel="stylesheet" href="/plugins/bootstrap/css/bootstrap.min.css">
	<!-- Icon Font Css -->
	<link rel="stylesheet" href="/plugins/themify/css/themify-icons.css">
	<link rel="stylesheet" href="/plugins/fontawesome/css/all.css">
	<link rel="stylesheet" href="/plugins/magnific-popup/dist/magnific-popup.css">
	<!-- Owl Carousel CSS -->
	<link rel="stylesheet" href="/plugins/slick-carousel/slick/slick.css">
	<link rel="stylesheet" href="/plugins/slick-carousel/slick/slick-theme.css">

	<!-- Main Stylesheet -->
	<link rel="stylesheet" href="/css/style.css">

	<style type="text/css">
		table {
			width: 100%;
			border-top: 1px solid #444444;
			border-collapse: collapse;
		}

		th,
		td {
			border-bottom: 1px solid #444444;
			padding: 10px;
		}
	</style>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
		function showpopup() {
			var option = "width = 500px, height = 500px, top = 100, left = 200, location = no"
			window.open("popup", "popup", option);
		}
	</script>

</head>

<body>

	<!-- Header Start -->
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<!-- Header Close -->

	<div class="main-wrapper ">
		<section class="page-title bg-1">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="block text-center">

							<!-- 닉네임 삽입부분 -->
							<!-- <span class="text-white">Our blog</span> -->
							<h1 class="text-capitalize mb-4 text-lg">${session_nickname} 점주님 환영합니다.</h1>
							<ul class="list-inline">
								<li class="list-inline-item"><a href="index" class="text-white">Home</a></li>
								<li class="list-inline-item"><span class="text-white">/</span></li>
								<li class="list-inline-item"><a href="cart" class="text-white-50">Cart</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="section blog-wrap bg-gray">
			<div class="container1" style="margin: 0 auto; width: 70%">
				<div class="row">

					<!-- 좌측 사용자 정보 시작 -->
					<div class="col-lg-4">
						<div class="sidebar-wrap">
							<!-- <div class="sidebar-widget search card p-4 mb-3 border-0">
							<input type="text" class="form-control" placeholder="search">
							<a href="#" class="btn btn-mian btn-small d-block mt-2">search</a>
							</div> -->

							<div class="sidebar-widget card border-0 mb-3">
								<img src="images/blog/blog-author.jpg" alt="" class="img-fluid">
								<div class="card-body p-4 text-center">

									<!-- 닉네임 삽입부분 -->
									<h5 class="mb-0 mt-4">${session_nickname} 점주님 어서오세요</h5>
									<br>

									<!-- 회원 등급, 보유 포인트 및 회원정보 수정 및 상품등록 경로 삽입부분 -->
									<!-- <p>Digital Marketer</p> -->
									<a href="#" class="btn btn-small btn-main btn-round-full">회원정보 수정</a>
									<a href="product_register" class="btn btn-small btn-main btn-round-full">상품등록</a>

									<!-- <ul class="list-inline author-socials">
										<li class="list-inline-item mr-3">
											<a href="#"><i class="fab fa-facebook-f text-muted"></i></a>
										</li>
										<li class="list-inline-item mr-3">
											<a href="#"><i class="fab fa-twitter text-muted"></i></a>
										</li>
										<li class="list-inline-item mr-3">
											<a href="#"><i class="fab fa-linkedin-in text-muted"></i></a>
										</li>
										<li class="list-inline-item mr-3">
											<a href="#"><i class="fab fa-pinterest text-muted"></i></a>
										</li>
										<li class="list-inline-item mr-3">
											<a href="#"><i class="fab fa-behance text-muted"></i></a>
										</li>
									</ul> -->
								</div>
							</div>


							<div class="sidebar-widget latest-post card border-0 p-4 mb-3">
								<h5>내가 올린 문의글</h5>

								<!-- 문의글 Start -->
								<c:forEach items="${sbList}" var="list">
									<!-- 문의글 Start -->
									<div class="media border-bottom py-3">
										<!-- <a href="#"><img class="mr-4" src="images/blog/bt-3.jpg" alt=""></a> -->
										<div class="media-body">
											<h6 class="my-2">
	
												<!-- 문의글 제목 및 해당 문의글 경로 -->
												<a href="../one_board/one_view?id=${list.id}">${list.btitle}</a>
											</h6>
	
											<!-- 문의글 올린 날짜 -->
											<span class="text-sm text-muted" style="font-family: 'Poppins', sans-serif;">${list.bdate}</span>
										</div>
									</div>
								</c:forEach>
								<!-- 문의글 Close -->


								<!-- 페이지 넘버링 Start -->
								<nav class="navigation pagination py-2 d-inline-block" style="float: right;">
									<div class="nav-links">
										<a class="page-numbers" href="/one_board/one_list" style="font-size: 13px; font-family: 'Poppins', sans-serif;">더보기</a>
									</div>
								</nav>
								<!-- 페이지 넘버링 Close -->
							</div>

							<!-- <div class="sidebar-widget bg-white rounded tags p-4 mb-3">
								<h5 class="mb-4">Tags</h5>

								<a href="#">Web</a>
								<a href="#">agency</a>
								<a href="#">company</a>
								<a href="#">creative</a>
								<a href="#">html</a>
								<a href="#">Marketing</a>
								<a href="#">Social Media</a>
								<a href="#">Branding</a>
							</div> -->
						</div>
					</div>
					<!-- 좌측 사용자 정보 끝 -->
					<!-- <div id="dlv_layer"
						style="width: 700px; background-color: rgb(255, 255, 255); z-index: 9999; border: 1px solid rgb(221, 221, 221); position: absolute; left: 50%; margin-left: -350px; top: 338.5px; display: block;"
						class="jqm-init">
						<script type="text/javascript">
							function Layer_close() {
								$("#dlv_layer").hide();
								$("#dlv_layer").jqmHide();
							}
						</script>

						배송조회
						<div class="order_list_area">
							<h2>
								<span class="title-box">배송조회</span>
							</h2>
							<a href="javascript:void(0)"
								onclick="Layer_close(); return false;"><span
								class="btn_close_pop">닫기</span></a>

							<div class="order_list_delivery">
								<dl>
									<dt>현재 상태</dt>
									<dd>구매확정</dd>
								</dl>
								<dl>
									<dt>송장 번호</dt>
									<dd>401822200194 (롯데택배)</dd>
								</dl>
							</div>
							<table style=' width="100%"; border="0"; cellspacing="0"; cellpadding="0"'
								class="order_list_table">
								<colgroup>
									<col width="*">
									<col width="*">
									<col width="35%">
									<col width="*">
									<col width="*">
								</colgroup>
								<tbody>
									<tr>
										<th>배송시간</th>
										<th>현재위치</th>
										<th>배송내용</th>
										<th>지점 연락처</th>
										<th>기사 연락처</th>
									</tr>
									결과 값 있음
								</tbody>
							</table>
						</div>
						//배송조회
					</div> -->

					<div class="col-lg-8">
						<h2>주문내역 조회</h2>
						<hr>
						<!-- 주문내역 시작 -->
						<table class="n-table table-col" style="font-family: 'Poppins', sans-serif;">
							<colgroup>
								<col style="width: 15%">
								<col style="width: 10%">
								<col style="width: 10%">
								<col style="width: 15%">
								<col style="width: 10%">
								<col style="width: 10%">
								<col style="width: 10%">
								<col style="width: 10%">
								<col style="width: 5%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">상품정보</th>
									<th scope="col">주문일자</th>
									<th scope="col">주문번호</th>
									<th scope="col">주문금액(수량)</th>
									<th scope="col">주문자</th>
									<th scope="col">수신자</th>
									<th scope="col">배송지</th>
									<th scope="col">주문 상태</th>
									<th scope="col">환불상태</th>
								</tr>
							</thead>
							<tbody>

								<!-- 주문내역 아이템 Start -->
								<c:forEach items="${order_map.order_list}" var="orderVo" varStatus="status">
									<tr>
										<td>
											<div class="n-prd-row">
												<!-- 사진부분 -->
												<a href="/app/goods/938746/0" class="img-block"> <img src="/productPicture/${orderVo.picture}" style="width: 100%; height: 100px;">
												</a>
												<!-- 상품정보 -->
												<ul class="info">
													<li class="name"><a href="../product/product_view?id=${orderVo.product_id}">${orderVo.name}</a></li>
												</ul>
											</div>
										</td>
										<!-- 주문일자 및 등등 -->
										<td>${orderVo.orderdate }</td>
										<td><a href="#">${orderVo.id }</a></td>
										<td>${orderVo.price }<span class="txt-default">(${orderVo.amount}개)</span></td>
										<td>${orderVo.sender }</td>
										<td>${orderVo.recipient }</td>
										<td>${orderVo.delivery_area}</td>
										<td>
											<div class="btn-set" id="order_status">
												<c:if test="${orderVo.status==1 }">
													<button type="button" class="btn btn-small btn-main btn-round-full" onclick="startDelivery(this)" value="${orderVo.id}">배송<br>준비중</button><br>
												</c:if>
													<br> <button class="btn btn-small btn-main btn-round-full" onclick="showpopup();">환불</button>
											</div>
										</td>
										<td>
											o
										</td>
									</tr>
								</c:forEach>
								<!-- 주문내역 아이템 Close -->
							</tbody>
						</table>
						<!-- 주문내역 끝 -->
					</div>
				</div>
				
				<!-- 넘버링 Start -->
				<!-- <div class="row mt-5">
					<div class="col-lg-8">
						<nav class="navigation pagination py-2 d-inline-block" style="float: right;">
							<div class="nav-links">
								<a class="prev page-numbers" href="#">Prev</a> <span aria-current="page"
									class="page-numbers current">1</span> <a class="page-numbers" href="#">2</a> <a
									class="next page-numbers" href="#">Next</a>
							</div>
						</nav>
					</div>
				</div> -->
				<!-- 넘버링 Close -->
			</div>
		</section>

		<!-- footer Start -->
		<jsp:include page="../layout/footer.jsp"></jsp:include>

	</div>

	<!-- 
    Essential Scripts
    =====================================-->
	<script type="text/javascript">
	function startDelivery(btn){
		var delivey_num = prompt("송장번호를 입력하세요.");
		if(delivey_num==null || delivey_num==''){
			alert("송장번호를 입력하지 않았습니다.");
		}else{
			$.ajax({
				type:"POST",
				url:"/order/deliveryStart",
				async : false,
				data:{
					"delivery_num":delivey_num,
					"id":$(btn).val()
				},
				success:function(data){
					alert("주문상태가 변경되었습니다.");
					location.href="/store/order_mypage";
				},
				error:function(){
					alert("에러임");
				}
				
			});
		}
	}
	</script>

	<!-- Main jQuery -->
	<script src="/plugins/jquery/jquery.js"></script>
	<script src="/js/contact.js"></script>
	<!-- Bootstrap 4.3.1 -->
	<script src="/plugins/bootstrap/js/popper.js"></script>
	<script src="/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--  Magnific Popup-->
	<script src="/plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
	<!-- Slick Slider -->
	<script src="/plugins/slick-carousel/slick/slick.min.js"></script>
	<!-- Counterup -->
	<script src="/plugins/counterup/jquery.waypoints.min.js"></script>
	<script src="/plugins/counterup/jquery.counterup.min.js"></script>
	<script src="/js/script.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</body>

</html>