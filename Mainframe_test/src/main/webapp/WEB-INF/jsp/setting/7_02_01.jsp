<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title"></div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">

				<div class="x_panel" style="min-width: 1200px;">
					<div class="x_title">
						<h2>担当者参照</h2>

						<!-- title 밑줄 -->
						<div class="clearfix"></div>
					</div>
					<!-- title 끝 -->

					<!-- content 시작 -->
					<div class="x_content">						
							<br />
							<!-- form 시작 -->
							<form class="form-horizontal form-label-left">
								<div class="form-group col-sm-6 col-xs-6">
									<div class="form-group col-sm-12 col-xs-12">
										<label class="control-label col-sm-2 col-xs-12">コード</label>
										<div class='col-sm-2 col-xs-12'>
											<input type="text" class="form-control">
										</div>
										<label class="control-label"
											style="padding-left: 5px; padding-right: 5px; float: left;">
											~ </label>
										<div class='col-sm-2 col-xs-12'>
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group col-sm-12 col-xs-12">
										<label class="control-label col-sm-2 col-xs-12">担当者名</label>
										<div class='col-sm-8 col-xs-12'>
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group col-sm-12 col-xs-12">
										<label class="control-label col-sm-2 col-xs-12">フリガナ</label>
										<div class='col-sm-8 col-xs-12'>
											<input type="text" class="form-control">
										</div>
									</div>
								</div>

								<div class="form-group col-sm-6 col-xs-6">
									<div class="form-group col-sm-12 col-xs-12">
										<label class="control-label col-sm-2 col-xs-12">入社年月日</label>
										<div class='col-sm-8 col-xs-12'>
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group col-sm-12 col-xs-12"
										style="margin-top: 40px">
										<label class="control-label col-sm-2 col-xs-12">有効/無効</label>
										<div class="form-group col-sm-4 col-xs-12"
											style="margin-left: 10px; padding: 5px; border: 1px solid #ccc;">
											<div class="col-sm-6 col-xs-12" style="padding: 0;">
												<div class="radio">
													<label style="padding-left: 0;"> <input
														type="radio" class="flat" checked name="iCheck">
														有効のみ
													</label>
												</div>
											</div>
											<div class="col-sm-6 col-xs-12" style="padding: 0;">
												<div class="radio">
													<label style="padding-left: 0;"> <input
														type="radio" class="flat" name="iCheck"> 全て
													</label>
												</div>
											</div>
										</div>
										<div class="form-group col-sm-5 col-xs-12"
											style="margin-left: 20px;">
											<div class="ol-sm-12 col-xs-12 col-md-offset-0"
												align="center;">
												<button type="button" class="btn btn-primary">検索</button>
												<button type="reset" class="btn btn-primary">終了</button>
											</div>
										</div>
									</div>
								</div>
							</form>
							<!-- form 끝 -->

							<hr class="my-4">

							<!-- table 시작 -->
							<div class="col-sm-12 col-xs-12"
								style="padding: 0; border: 1px solid #ccc;">
								<table id="datatable-test2"
									class="table table-striped table-bordered dt-responsive nowrap"
									style="border: none; border-bottom: 1px solid #ccc; width: 100%;">
									<thead>
										<tr>
											<th></th>
											<th>コード</th>
											<th>商品名</th>
											<th>印字用名称</th>
											<th>フリガナ</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td></td>
											<td>1</td>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
										</tr>
										<tr>
											<td></td>
											<td>2</td>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
										</tr>
										<tr>
											<td></td>
											<td>3</td>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 테이블 끝 -->

						</div>
						<!-- content 끝 -->

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /page content -->
	<script src="/resources/js/test.js"></script>