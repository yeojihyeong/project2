<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
%>
<main>
	<div class="row">
		<div class="col-lg-6">
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-chart-bar me-1"></i> 도서 현황
				</div>
				<div class="card-body">
					<canvas id="myBarChart" width="100%" height="50" >"${main }"</canvas>
					
				 <%-- 	<c:forEach items="${search }" var="s">
					${s.genre_id }
					${s.genre_name }	
				
				</c:forEach>  --%>
				</div>
				<div class="card-footer small text-muted"><%= sf.format(nowTime) %></div>
				<c:forEach items="${search }" var="list">
					
				
				</c:forEach> 
			</div>
		</div>
		<div class="col-lg-6">
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-chart-pie me-1"></i> Pie Chart Example
				</div>
				<div class="card-body">
					<canvas id="myPieChart" width="100%" height="50"></canvas>
				</div>
				<div class="card-footer small text-muted"><%= sf.format(nowTime) %></div>
			</div>
		</div>
	</div>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Dashboard</h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item active">Dashboard</li>
		</ol>
		<div class="row">
			<div class="col-xl-3 col-md-6">
				<div class="card bg-primary text-white mb-4">
					<div class="card-body">Primary Card</div>
					<div
						class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href="#">View
							Details</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-6">
				<div class="card bg-warning text-white mb-4">
					<div class="card-body">Warning Card</div>
					<div
						class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href="#">View
							Details</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-6">
				<div class="card bg-success text-white mb-4">
					<div class="card-body">Success Card</div>
					<div
						class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href="#">View
							Details</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-6">
				<div class="card bg-danger text-white mb-4">
					<div class="card-body">Danger Card</div>
					<div
						class="card-footer d-flex align-items-center justify-content-between">
						<a class="small text-white stretched-link" href="#">View
							Details</a>
						<div class="small text-white">
							<i class="fas fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xl-6">
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-chart-area me-1"></i> Area Chart Example
					</div>
					<div class="card-body">
						<canvas id="myAreaChart" width="100%" height="40"></canvas>
					</div>
				</div>
			</div>
			<div class="col-xl-6">
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-chart-bar me-1"></i> Bar Chart Example
					</div>
					<div class="card-body">
						<canvas id="myBarChart" width="100%" height="40"></canvas>
					</div>
				</div>
			</div>
		</div>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> DataTable Example
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
				</table>
			</div>
		</div>
	</div>
</main>