<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title"></div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">

				<div class="x_panel">
					<div class="x_title">
						<h2>商品参照</h2>

						<!-- title 밑줄 -->
						<div class="clearfix"></div>
					</div>
					<!-- title 끝 -->

					<!-- content 시작 -->
					<div class="x_content">

						<br />
						<!-- form 시작 -->
						<form class="form-horizontal form-label-left">
							<div class="form-group">
								<label class="control-label" style="display: inline-block;">コード</label>
								<span
									style="visibility: hidden; display: inline-block; width: 5%;"></span>
								<input type="text" class="form-control"
									style="width: 10%; display: inline-block;"> <span>~</span>
								<input type="text" class="form-control"
									style="width: 10%; display: inline-block;"> <span
									style="visibility: hidden; display: inline-block; width: 12%;"></span>
								<label class="control-label" style="display: inline-block;">フリガナ</label>
								<span
									style="visibility: hidden; display: inline-block; width: 5%;"></span>
								<input type="text" class="form-control"
									style="width: 30%; display: inline-block;">
							</div>
							<div class="form-group">
								<label class="control-label" style="display: inline-block;">商品名</label>
								<span
									style="visibility: hidden; display: inline-block; width: 5%;"></span>
								<input type="text" class="form-control"
									style="width: 30%; display: inline-block;"> <span
									style="visibility: hidden; display: inline-block; width: 4%;"></span>
								<label class="control-label" style="display: inline-block;">分類</label>
								<span
									style="visibility: hidden; display: inline-block; width: 5%;"></span>
								<input type="text" class="form-control"
									style="width: 8%; display: inline-block;"> <input
									type="text" class="form-control"
									style="width: 30%; display: inline-block;">
							</div>
							<div class="form-group">
								<label class="control-label" style="display: inline-block;">印字用名称</label>
								<span
									style="visibility: hidden; display: inline-block; width: 1.5%;"></span>
								<input type="text" class="form-control"
									style="width: 30%; display: inline-block;"> <span
									style="visibility: hidden; display: inline-block; width: 4%;"></span>
								<label class="control-label" style="display: inline-block;">有効/無効</label>
								<span
									style="visibility: hidden; display: inline-block; width: 1.5%;"></span>
								<div class="radio" style="display: inline-block;">
									<label for="radio1"> <input type="radio" id="radio1">
										有効のみ
									</label> <label for="radio2"> <input type="radio" id="radio2">
										全部
									</label>
								</div>
								<span
									style="visibility: hidden; display: inline-block; width: 5%;"></span>
								<button type="button" class="btn btn-default btn-sm">&nbsp;検索&nbsp;</button>
								<span
									style="visibility: hidden; display: inline-block; width: 1%;"></span>
								<button type="button" class="btn btn-default btn-sm">&nbsp;終了&nbsp;</button>
							</div>
						</form>
						<!-- form 끝 -->
						<hr class="my-4">
						<!-- table 시작 -->
						<div class="x_panel">
							<div class="x_title">
								<h2>
									Bordered table <small>Bordered table subtitle</small>
								</h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a class="collapse-link"><i
											class="fa fa-chevron-up"></i></a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown" role="button" aria-expanded="false"><i
											class="fa fa-wrench"></i></a>
										<ul class="dropdown-menu" role="menu">
											<li><a href="#">Settings 1</a></li>
											<li><a href="#">Settings 2</a></li>
										</ul></li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content" style="overflow: auto; height: 100px;">

								<table class="table table-bordered">
									<thead>
										<tr>
											<th>コード</th>
											<th>商品名</th>
											<th>印字用名称</th>
											<th>フリガナ</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>@fat</td>
										</tr>
										<tr>
											<th scope="row">3</th>
											<td>Larry</td>
											<td>the Bird</td>
											<td>@twitter</td>
										</tr>
										<tr>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>@fat</td>
										</tr>
										<tr>
											<th scope="row">3</th>
											<td>Larry</td>
											<td>the Bird</td>
											<td>@twitter</td>
										</tr>
										<tr>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>@fat</td>
										</tr>
										<tr>
											<th scope="row">3</th>
											<td>Larry</td>
											<td>the Bird</td>
											<td>@twitter</td>
										</tr>
										<tr>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>@fat</td>
										</tr>
										<tr>
											<th scope="row">3</th>
											<td>Larry</td>
											<td>the Bird</td>
											<td>@twitter</td>
										</tr>
										<tr>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>@fat</td>
										</tr>
										<tr>
											<th scope="row">3</th>
											<td>Larry</td>
											<td>the Bird</td>
											<td>@twitter</td>
										</tr>
									</tbody>
								</table>

							</div>
						</div>
						<!-- 테이블 끝 -->
					</div>
					<!-- content 끝 -->

				</div>
			</div>
		</div>
		<!-- <div class="row"> 끝단 -->

	</div>









</div>
<!-- content 끝 -->

</div>
</div>
</div>
</div>
</div>
<!-- /page content -->
<script src="/resources/js/test2.js"></script>