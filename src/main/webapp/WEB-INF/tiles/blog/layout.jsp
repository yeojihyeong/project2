<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Blog Home - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="resources/blog/assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/blog/css/styles.css" rel="stylesheet" />
      
      <!-- ogani -->
      
    <link rel="stylesheet" href="resources/ogani/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/ogani/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/ogani/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/ogani/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/ogani/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/ogani/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/ogani/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/ogani/css/style.css" type="text/css">
      
      
      
        
    </head>
    <body>
        <!-- Responsive navbar-->
         <tiles:insertAttribute name="nav" />
        <!-- Page header with logo and tagline-->
        <tiles:insertAttribute name="header" />
        <!-- Page content-->
        <div class="container">
            <div class="row">
                <!-- Blog entries-->
                <tiles:insertAttribute name="body" />
                <!-- Side widgets-->
                <tiles:insertAttribute name="side" />
            </div>
        </div>
        <!-- Footer-->
         <tiles:insertAttribute name="footer" />
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/blog/js/scripts.js"></script>
        
        <!-- ogani -->
        
    <script src="resources/ogani/js/jquery-3.3.1.min.js"></script>
    <script src="resources/ogani/js/bootstrap.min.js"></script>
    <script src="resources/ogani/js/jquery.nice-select.min.js"></script>
    <script src="resources/ogani/js/jquery-ui.min.js"></script>
    <script src="resources/ogani/js/jquery.slicknav.js"></script>
    <script src="resources/ogani/js/mixitup.min.js"></script>
    <script src="resources/ogani/js/owl.carousel.min.js"></script>
    <script src="resources/ogani/js/main.js"></script>
        
    </body>
</html>