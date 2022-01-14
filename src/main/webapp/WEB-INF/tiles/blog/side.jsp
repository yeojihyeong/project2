<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="col-lg-4">
	<!-- Search widget-->
	<div class="card mb-4">
		<div class="card-header">Search</div>
		<div class="card-body">
			<div class="input-group">
				<input class="form-control" type="text"
					placeholder="Enter search term..."
					aria-label="Enter search term..." aria-describedby="button-search" />
				<button class="btn btn-primary" id="button-search" type="button">Go!</button>
			</div>
		</div>
	</div>
	<!-- Categories widget-->
	<div class="card mb-4">
		<div class="card-header">Categories</div>
		<div class="card-body">
			<div class="row">
				<div class="col-sm-6">
					<ul class="list-unstyled mb-0">
						<li><a href="reviewPaging.do">�ۼ��� ����</a></li>
						<li><a href="wishBook.do">�а� ��� å</a></li>
						<li><a href="readingBook.do">�а� �ִ� å</a></li>
						<li><a href="readBook.do">�ϵ��� å</a></li>
						<li><a href="readingStat.do">���� ���</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- Side widget-->
	<div class="card mb-4">
		<div class="card-header">Following</div>
		<div class="card-body">my following list</div>
		<a href="following.do">�̿� ��ü ����</a>
	</div>
</div>