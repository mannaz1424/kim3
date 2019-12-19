<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title"></div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-sm-12 col-xs-12">

				<div class="x_panel" style="min-width: 1200px;">
					<div class="x_title">
						<h2>担当者部門マスタ</h2>

						<!-- title 밑줄 -->
						<div class="clearfix"></div>
					</div>
					<!-- title 끝 -->

					<!-- content 시작 -->
					<div class="x_content">
						<br />

						<!-- table 시작 -->
						<div class="col-sm-12 col-xs-12"
							style="padding: 0; border: 1px solid #ccc;">
							<table id="table-test2"
								class="table table-striped table-bordered dt-responsive nowrap"
								style="border: none; border-bottom: 1px solid #ccc; width: 100%;">
								<thead>
									<tr>
										<th></th>
										<th>コード</th>
										<th>部門名</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td></td>
										<td>0001</td>
										<td>DS</td>
									</tr>
									<tr>
										<td></td>
										<td>0002</td>
										<td>CS</td>
									</tr>
									<tr>
										<td></td>
										<td>0003</td>
										<td>DS2</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- 테이블 끝 -->
						


						<!-- form 시작 -->
						<div class="col-sm-12 col-xs-12" style=">
							<form class="form-horizontal form-label-left">
								<div class="form-group">
									<label class="control-label col-sm-1 col-xs-12">コード</label>
									<div class="col-sm-1 col-xs-12">
										<input type="text" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-1 col-xs-12">部門名</label>
									<div class="col-sm-4 col-xs-12">
										<input type="text" class="form-control">
									</div>
								</div>

							</form>
							<!-- form 끝 -->
						</div>

						<!-- title 밑줄 -->
						<div class="x_title">
							<div class="clearfix"></div>
						</div>
						<BR>


						<!-- button 설정 -->
						<div class="form-group">
							<div class="col-sm-12 col-xs-12 col-md-offset-0"
								align="center">

								<button type="button" class="btn btn-primary"
									style="float: left;" disabled="disabled">取消</button>
								<button type="button" class="btn btn-primary"
									style="float: left;" disabled="disabled">削除</button>
								<button type="button" class="btn btn-primary">新規</button>
								<button type="submit" class="btn btn-primary"
									style="margin-left: 15%;" disabled="disabled">登録</button>
								<button type="button" class="btn btn-primary"
									style="float: right;">終了</button>
							</div>
						</div>

					</div>
					<!-- content 끝 -->

				</div>
			</div>
		</div>
	</div>
</div>
<!-- /page content -->
<script src="/resources/js/test.js"></script>
<script src="/resources/js/setting/test.js"></script>