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
						<h2>発送日マスタ</h2>

						<!-- title 밑줄 -->
						<div class="clearfix"></div>
					</div>
					<!-- title 끝 -->

					<!-- content 시작 -->
					<div class="x_content">
						<br />
						<!-- form 시작 -->
						<form class="form-horizontal form-label-left">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="x_panel">
									<div class="x_content">
										<div class="table-responsive"
											style="height: 300px; overflow: auto">
											<table class="table table-striped jambo_table bulk_action">
												<thead>
													<tr class="headings">
														<th><input type="checkbox" id="check-all"
															class="flat"></th>
														<th class="column-title">コード</th>
														<th class="column-title">発送エリア名</th>
														<th class="column-title">配達日数</th>
													</tr>
												</thead>
												<tbody>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">1</td>
														<td class=" ">1</td>
														<td class=" ">1</td>
													</tr>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">2</td>
														<td class=" ">2</td>
														<td class=" ">2</td>
													</tr>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">3</td>
														<td class=" ">3</td>
														<td class=" ">3</td>
													</tr>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">4</td>
														<td class=" ">4</td>
														<td class=" ">4</td>
													</tr>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">5</td>
														<td class=" ">5</td>
														<td class=" ">5</td>
													</tr>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">6</td>
														<td class=" ">6</td>
														<td class=" ">6</td>
													</tr>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">7</td>
														<td class=" ">7</td>
														<td class=" ">7</td>
													</tr>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">8</td>
														<td class=" ">8</td>
														<td class=" ">8</td>
													</tr>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">9</td>
														<td class=" ">9</td>
														<td class=" ">9</td>
													</tr>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">10</td>
														<td class=" ">10</td>
														<td class=" ">10</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<br><br>
							
							<div class="form-group">
								<label class="control-label col-md-1 col-sm-1 col-xs-12">コード</label>
								<div class="col-md-2 col-sm-2 col-xs-3">
									<input type="number" class="form-control" >
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-1 col-sm-1 col-xs-12">発送エリア名</label>
								<div class="col-md-6 col-sm-6 col-xs-9">
									<input type="text" class="form-control" >
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-1 col-sm-1 col-xs-12">配達日数</label>
								<div class="col-md-2 col-sm-2 col-xs-3">
									<input type="number" class="form-control" >
								</div>
							</div>

							<!-- button 설정 -->
							<div class="ln_solid"></div>
							<div class="form-group">
								<div class="col-md-12 col-sm-12 col-xs-12 col-md-offset-0"
									align="center">
									<button type="button" class="btn btn-primary"
										style="float: left;">取消</button>
									<button type="button" class="btn btn-primary">削除</button>
									<button type="button" class="btn btn-primary">新規</button>
									<button type="submit" class="btn btn-primary"
										style="margin-left: 15%;">登録</button>
									<button type="button" class="btn btn-primary"
										style="float: right;">終了</button>
								</div>
							</div>
						</form>
						<!-- form 끝 -->
						
					</div>
					<!-- content 끝 -->

				</div>
			</div>
		</div>
	</div>
</div>
<!-- /page content -->
<script src="/resources/js/test2.js"></script>