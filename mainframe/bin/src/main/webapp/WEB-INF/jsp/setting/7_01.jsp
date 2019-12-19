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
						<h2>商品登録</h2>

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
								<label class="control-label col-md-3 col-sm-3 col-xs-12">コード</label>
								<div class="col-md-3 col-sm-3 col-xs-6">
									<input type="text" class="form-control" readonly="readonly">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">名称</label>
								<div class="col-md-9 col-sm-9 col-xs-12">
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">印字用名称</label>
								<div class="col-md-9 col-sm-9 col-xs-12">
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">略称</label>
								<div class="col-md-9 col-sm-9 col-xs-12">
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">フリガナ</label>
								<div class="col-md-9 col-sm-9 col-xs-12">
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">規格</label>
								<div class="col-md-9 col-sm-9 col-xs-12">
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">単位</label>
								<div class="col-md-3 col-sm-3 col-xs-6">
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">商品分類</label>
								<div class="col-md-2 col-sm-2 col-xs-6">
									<input type="text" class="form-control">
								</div>
								<!-- selectBox로+++++++++++++  -->
								<div class="col-md-4 col-sm-4 col-xs-10">
									<select class="form-control">
										<option>Choose option</option>
										<option>Option one</option>
										<option>Option two</option>
										<option>Option three</option>
										<option>Option four</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">在庫管理</label>
								<div class="col-md-1 col-sm-1 col-xs-6">
									<input type="text" class="form-control">
								</div>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<h2>
										<small>(0:する, 1:しない)</small>
									</h2>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">課税区分</label>
								<div class="col-md-1 col-sm-1 col-xs-6">
									<input type="text" class="form-control">
								</div>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<h2>
										<small>(0:外税, 1:非課税, 2:内税)</small>
									</h2>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">標準売価</label>
								<div class="col-md-4 col-sm-4 col-xs-12">
									<input type="text" class="form-control">
								</div>
								<div class="col-md-1 col-sm-1 col-xs-6">
									<h2>
										<small>円</small>
									</h2>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">原価単価</label>
								<div class="col-md-4 col-sm-4 col-xs-6">
									<input type="text" class="form-control">
								</div>
								<div class="col-md-1 col-sm-1 col-xs-6">
									<h2>
										<small>円</small>
									</h2>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">消費サイクル</label>
								<div class="col-md-2 col-sm-2 col-xs-6">
									<input type="text" class="form-control">
								</div>
								<div class="col-md-1 col-sm-1 col-xs-6">
									<h2>
										<small>?</small>
									</h2>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">有効/無効</label>
								<div class="col-md-1 col-sm-1 col-xs-6">
									<input type="text" class="form-control">
								</div>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<h2>
										<small>(0:有効, 9:無効)</small>
									</h2>
								</div>
							</div>
						</form>
						<!-- form 끝 -->
						
						<!-- 버튼 -->
						<div>
							<span class="col-md-1 col-sm-1 col-xs-1">
								<button type="button" class="btn btn-default btn-sm" 
										onclick=window.location='/7_01_01' >&nbsp;検索&nbsp;</button>
							</span> <span class="col-md-1 col-sm-1 col-xs-1">
								<button type="button" class="btn btn-default btn-sm"
									disabled="disabled">&nbsp;取消&nbsp;</button>
							</span> <span class="col-md-1 col-sm-1 col-xs-1"> </span> <span
								class="col-md-1 col-sm-1 col-xs-1">
								<button type="button" class="btn btn-default btn-sm">&nbsp;削除&nbsp;</button>
							</span> <span class="col-md-1 col-sm-1 col-xs-1">
								<button type="button" class="btn btn-default btn-sm">&nbsp;規格&nbsp;</button>
							</span> <span class="col-md-1 col-sm-1 col-xs-1"> </span> <span
								class="col-md-1 col-sm-1 col-xs-1">
								<button type="button" class="btn btn-default btn-sm"
									disabled="disabled">&nbsp;登錄&nbsp;</button>
							</span> <span class="col-md-1 col-sm-1 col-xs-1"> </span> <span
								class="col-md-1 col-sm-1 col-xs-1"> </span> <span
								class="col-md-1 col-sm-1 col-xs-1">
								<button type="button" class="btn btn-default btn-sm">&nbsp;終了&nbsp;</button>
							</span>
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