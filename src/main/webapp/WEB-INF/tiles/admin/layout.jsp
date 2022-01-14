<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Dashboard - SB Admin</title>

<!-- 도서 인설트 css 스타일 -->
<link rel="stylesheet" href="resources/admin/ogani/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/admin/ogani/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/admin/ogani/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/admin/ogani/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/admin/ogani/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/admin/ogani/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/admin/ogani/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/admin/ogani/css/style.css" type="text/css">



<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous">
	
</script>
</head>
<body class="sb-nav-fixed">
	<tiles:insertAttribute name="nav" />
	<div id="layoutSidenav">
		<tiles:insertAttribute name="layoutSidenav" />
		<div id="layoutSidenav_content">
			<tiles:insertAttribute name="body" />
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/admin/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/admin/assets/demo/chart-area-demo.js"></script>
	<script src="resources/admin/assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="resources/admin/js/datatables-simple-demo.js"></script>

	<script src="resources/admin/assets/demo/chart-pie-demo.js"></script>
	<script src="resources/admin/assets/demo/chart-area-demo.js"></script>
	<script src="resources/admin/assets/demo/chart-bar-demo.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="resources/admin/js/datatables-simple-demo.js"></script>
	
	
	
	<script src="resources/admin/ogani/js/jquery-3.3.1.min.js"></script>
    <script src="resources/admin/ogani/js/bootstrap.min.js"></script>
    <script src="resources/admin/ogani/js/jquery.nice-select.min.js"></script>
    <script src="resources/admin/ogani/js/jquery-ui.min.js"></script>
    <script src="resources/admin/ogani/js/jquery.slicknav.js"></script>
    <script src="resources/admin/ogani/js/mixitup.min.js"></script>
    <script src="resources/admin/ogani/js/owl.carousel.min.js"></script>
    <script src="resources/admin/ogani/js/main.js"></script>
	
	
	
</body>
</html>