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
						<h2>担当者マスタ</h2>

						<!-- title 밑줄 -->
						<div class="clearfix"></div>
					</div>
					<!-- title 끝 -->

					<!-- content 시작 -->
					<div class="x_content">
						<div class="col-md-12 col-xs-12">
							<br />
							<div class="col-sm-6 col-xs-6" style="padding: 0;">
								<form class="form-horizontal form-label-left">
									<div class="form-group">
										<div class="form-group">
											<label class="control-label col-sm-2 col-xs-12">コード </label>
											<div class="col-sm-3 col-xs-12">
												<input type="number" class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2 col-xs-12">氏名 </label>
											<div class="col-sm-8 col-xs-12">
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2 col-xs-12">フリガナ
											</label>
											<div class="col-sm-8 col-xs-12">
												<input type="text" class="form-control">
											</div>
										</div>
										<br>
										<div class="form-group">
											<label class="control-label col-sm-2 col-xs-12">メモ </label>
											<div class="col-sm-10 col-xs-12">
												<textarea class="form-control" rows="3"></textarea>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-2 col-xs-12">入社年月日
											</label>
											<div class="col-sm-6 col-xs-12">
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2 col-xs-12">退社年月日
											</label>
											<div class="col-sm-6 col-xs-12">
												<input type="text" class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-sm-2 col-xs-12">有効/無効
											</label>
											<div class="col-sm-2 col-xs-12">
												<input type="text" class="form-control">
											</div>
											<span class="required">(0:有効, 9:無効)</span>
										</div>
									</div>
								</form>
							</div>
							<!-- form 끝 -->

							<!-- table 시작 -->
							<div class="col-sm-6 col-xs-6">
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
														<th class="column-title">チラシ名</th>
														<th class="column-title">備考</th>
														<th class="column-title">対象</th>
														<th class="bulk-actions" colspan="7"><a class="antoo"
															style="color: #fff; font-weight: 500;">選択項目 ( <span
																class="action-cnt"> </span> ) <i
																class="fa fa-chevron-down"></i>
														</a></th>
													</tr>
												</thead>
												<tbody>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">1</td>
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
														<td class=" ">2</td>
													</tr>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">3</td>
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
														<td class=" ">4</td>
													</tr>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">5</td>
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
														<td class=" ">6</td>
													</tr>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">7</td>
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
														<td class=" ">8</td>
													</tr>
													<tr class="even pointer">
														<td class="a-center "><input type="checkbox"
															class="flat" name="table_records"></td>
														<td class=" ">9</td>
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
														<td class=" ">10</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- title 밑줄 -->
						<div class="clearfix"></div>
						<br>
						<div class="ln_solid"></div>
						<br>

						<div class="col-sm-12 col-xs-12">

							<div class="form-group col-sm-5 col-xs-6"
								style="padding: 5px 10px 10px; border: 1px solid #CCC;">
								<div class="radio">
									<label> <input type="checkbox" class="flat" checked
										name="iCheck"> パスワード変更
									</label>
								</div>
								
								<!-- title 밑줄 -->
								<div class="ln_solid"></div>
								<div class="form-group">
									<label class="control-label col-sm-4 col-xs-12">パスワード </label>
									<div class="col-sm-8 col-xs-12">
										<input type="password" class="form-control">
									</div>
								</div>
								<div style="margin: 10px"></div>
								<div class="form-group">
									<label class="control-label col-sm-4 col-xs-12">パスワード(確認)
									</label>
									<div class="col-sm-8 col-xs-12">
										<input type="password" class="form-control">
									</div>
								</div>
							</div>

							<!-- table 시작 -->
							<div class="col-sm-6 col-xs-6 col-sm-offset-1"
								style="padding: 0; border: 1px solid #ccc;">
								<table id="datatable-test2"
									class="table table-striped table-bordered dt-responsive nowrap"
									style="border: none; border-bottom: 1px solid #ccc; width: 100%;">
									<thead>
										<tr>
											<th></th>
											<th>部門</th>
											<th>部門名</th>
											<th>支店</th>
											<th>支店名</th>
											<th>期限</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<!-- title 밑줄 -->
						<div class="clearfix"></div>
						<br>
						<div class="ln_solid"></div>
						<br>

						<!-- button 설정 -->
						<div class="form-group">
							<div class="col-md-12 col-sm-12 col-xs-12 col-md-offset-0"
								align="center">
								<button type="button" class="btn btn-primary"
									style="float: left;" onclick=window.location="/7_02_01" >検索</button>
								<button type="button" class="btn btn-primary"
									style="float: left;"
									disabled="disabled">取消</button>
								<button type="button" class="btn btn-primary"
									style="float: left;"
									disabled="disabled">行削除</button>
								<button type="button" class="btn btn-primary">削除</button>
								<button type="button" class="btn btn-primary">新規</button>
								<button type="submit" class="btn btn-primary"
									style="margin-left: 15%;"
									disabled="disabled">登録</button>
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