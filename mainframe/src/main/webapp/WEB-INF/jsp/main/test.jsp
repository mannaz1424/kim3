<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
	  
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-sm-12 col-sm-12 col-xs-12">
				<div class="x_panel" style="min-width: 1500px;">
					<div class="x_content">
						<br />
						<div class="form-horizontal form-label-left">
							<div class="form-group">
								<label class="control-label col-sm-1 col-xs-12" for="first-name">伝票番号</label>
								<div class="col-sm-1 col-xs-12" style="padding:0;">
									<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
								</div>
								<label class="control-label col-sm-1 col-xs-12" for="first-name">顧客</label>
								<div class="col-sm-1 col-xs-12" style="padding-right:0;">
									<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
								</div>
								<div class="col-sm-3 col-xs-12" style="padding:0;">
									<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
								</div>
								<label class="control-label col-sm-1 col-xs-12" for="first-name">担当者</label>
								<div class="col-sm-1 col-xs-12" style="padding:0;">
									<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
								</div>
								<div class="col-sm-3 col-xs-12" style="padding:0;">
									<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12" disabled="disabled">
								</div>
							</div>
							<div class="form-group" style="margin: 0;">
								<div class="form-group col-sm-3 col-xs-12" style="margin: 0;padding: 0;">
									<label class="control-label col-sm-4 col-xs-12" for="first-name">発送日</label>
									<div class='input-group date col-sm-8 col-xs-12' id='myDatepicker2'>
			                            <input type='text' class="form-control" />
			                            <span class="input-group-addon">
			                               <span class="glyphicon glyphicon-calendar"></span>
			                            </span>
			                        </div>
								</div>
								<div class="col-sm-1 col-xs-12" style="padding-right:0;text-align:right;">
		                            <div class="checkbox">
										<label style="padding-left:0;">
											<input type="checkbox" class="flat"> チェック
										</label>
									</div>
		                        </div>
							</div>
							<div class="form-group" style="margin: 0;">
								<div class="form-group col-sm-3 col-xs-12" style="margin: 0;padding: 0;">
									<label class="control-label col-sm-4 col-xs-12" for="first-name">売上日</label>
									<div class='input-group date col-sm-8 col-xs-12' id='myDatepicker3'>
			                            <input type='text' class="form-control" />
			                            <span class="input-group-addon">
			                               <span class="glyphicon glyphicon-calendar"></span>
			                            </span>
			                        </div>
								</div>
								<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left: 0;">担当者</label>
								<div class="form-group col-sm-3 col-xs-12" style="margin: 0;padding: 0;">
									<div class="col-sm-3 col-xs-12" style="padding:0;">
										<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
									</div>
									<div class="col-sm-6 col-xs-12" style="padding:0;">
										<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
									</div>
								</div>
								<label class="control-label col-sm-1 col-xs-12" for="first-name">日付</label>
								<div class="col-sm-2 col-xs-12" style="padding-left:0;">
									<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
								</div>
							</div>
							<div class="form-group" style="margin: 0;">
								<div class="form-group col-sm-3 col-xs-12" style="padding: 0;">
									<label class="control-label col-sm-4 col-xs-12" for="first-name">送り状</label>
									<div class='col-sm-2 col-xs-12' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
			                        <div class='col-sm-6 col-xs-12' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
								</div>
								<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left: 0;">伝票状態</label>
								<div class="form-group col-sm-8 col-xs-12" style="margin: 0;padding: 0;">
									<div class="col-sm-1 col-xs-12" style="padding: 0;">
										<div class="radio">
											<label style="padding-left:0;">
												<input type="radio" class="flat" checked name="iCheck"> 通常
											</label>
										</div>
			                        </div>
			                        <div class="col-sm-1 col-xs-12" style="padding: 0;">
			                            <div class="radio">
											<label style="padding-left:0;">
												<input type="radio" class="flat" name="iCheck"> 取消
											</label>
										</div>
			                        </div>
			                        <div class="col-sm-1 col-xs-12" style="padding: 0;">
			                            <div class="radio">
											<label style="padding-left:0;">
												<input type="radio" class="flat" name="iCheck"> 回収不能
											</label>
										</div>
			                        </div>
			                        <div class="col-sm-1 col-xs-12" style="padding: 0;">
			                            <div class="radio">
											<label style="padding-left:0;">
												<input type="radio" class="flat" name="iCheck"> 債権放棄
											</label>
										</div>
			                        </div>
			                        <div class="col-sm-1 col-xs-12" style="padding: 0;">
			                            <div class="radio">
											<label style="padding-left:0;">
												<input type="radio" class="flat" name="iCheck"> 再請求
											</label>
										</div>
			                        </div>
								</div>
							</div>
							<div class="form-group" style="margin: 0;">
								<div class="form-group col-sm-3 col-xs-12" style="padding: 0;">
									<label class="control-label col-sm-4 col-xs-12" for="first-name">出荷区分</label>
									<div class='col-sm-2 col-xs-12' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
			                        <div class='col-sm-4 col-xs-12' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
								</div>
								<label class="control-label col-sm-1 col-xs-12" for="first-name">担当者</label>
								<div class="form-group col-sm-2 col-xs-12" style="margin: 0;padding: 0;">
									<div class="col-sm-3 col-xs-12" style="padding:0;">
										<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
									</div>
									<div class="col-sm-9 col-xs-12" style="padding:0;">
										<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
									</div>
								</div>
								<div class="form-group col-sm-2 col-xs-12" style="margin: 0;padding: 0;">
									<label class="control-label col-sm-3 col-xs-12" for="first-name">日付</label>
									<div class="col-sm-6 col-xs-12" style="padding:0;">
										<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
									</div>
									<label class="control-label col-sm-3 col-xs-12" for="first-name">理由</label>
								</div>
								<div class="form-group col-sm-4 col-xs-12" style="margin: 0;padding: 0;">
									<div class="col-sm-12 col-xs-12" style="padding:0;">
										<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
									</div>
								</div>
							</div>
							<div class="form-group" style="margin: 0;">
								<label class="control-label col-sm-1 col-xs-12" for="first-name">支払方法</label>
								<div class="form-group col-sm-3 col-xs-12" style="padding: 0;">
									<div class='col-sm-2 col-xs-12' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
			                        <div class='col-sm-7 col-xs-12' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
			                        <label class="control-label col-sm-3 col-xs-12" for="first-name" style="padding-left:0;">支払期限</label>
								</div>
		                        <div class='col-sm-2 col-xs-12' style="padding:0;">
		                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
		                        </div>
							</div>
							<div class="form-group" style="margin: 0;">
								<label class="control-label col-sm-1 col-xs-12" for="first-name"></label>
								<div class="form-group col-sm-8 col-xs-12" style="margin: 0; padding:0;">
									<div class="form-group col-sm-12 col-xs-12" style="padding: 0;">
										<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">信販会社</label>
										<div class='col-sm-1 col-xs-12' style="padding:0;">
				                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
				                        </div>
				                        <div class='col-sm-3 col-xs-12' style="padding:0;">
				                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
				                        </div>
				                        <label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">支払回数</label>
				                        <div class='col-sm-2 col-xs-12' style="padding:0;">
				                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
				                        </div>
				                        <label class="control-label" style="padding-left:5px; padding-right: 10px; float:left;"> 回</label>
				                        <label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">返済期限</label>
				                        <div class='col-sm-1 col-xs-12' style="padding:0;">
				                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
				                        </div>
				                        <label class="control-label" style="padding-left:5px; padding-right:5px; float:left;"> ~ </label>
				                        <div class='col-sm-1 col-xs-12' style="padding:0;">
				                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
				                        </div>
									</div>
								</div>
								<div class="form-group col-sm-3 col-xs-12" style="margin: 0; padding:0; position: absolute; right: 0;">
									<div class="col-sm-12 col-sm-12 col-xs-12" style="padding:0; border: 1px solid #ccc;">
										<table id="datatable-test2" class="table table-striped table-bordered dt-responsive nowrap" style="border: none; border-bottom:1px solid #ccc; width : 100%;">
											<thead>
												<tr>
													<th></th>	
													<th>届け先</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td></td>
													<td>Tiger Nixon</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="col-sm-12 col-sm-12 col-xs-12" style="padding-top : 8px;">
										<div class="col-sm-6 col-xs-12">
											<button type="button" class="btn btn-default" style="width: 100%;">追加</button>
										</div>
										<div class="col-sm-6 col-xs-12">
											<button type="button" class="btn btn-default" style="width: 100%;">削除</button>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group" style="margin: 0;">
								<label class="control-label col-sm-1 col-xs-12" for="first-name"></label>
								<div class="form-group col-sm-8 col-xs-12" style="margin: 0; padding:0;">
									<div class="form-group col-sm-12 col-xs-12" style="padding: 0;">
										<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">支払総額</label>
				                        <div class='col-sm-3 col-xs-12' style="padding:0;">
				                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
				                        </div>
				                        <label class="control-label" style="padding-left:5px; padding-right: 10px; float:left;"> 円</label>
				                        <label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">提出日</label>
				                        <div class='col-sm-3 col-xs-12' style="padding:0;">
				                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
				                        </div>
				                        <label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">承認番号</label>
				                        <div class='col-sm-2 col-xs-12' style="padding:0;">
				                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
				                        </div>
									</div>
								</div>
							</div>
							<div class="form-group" style="margin: 0;">
								<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">摘要1</label>
								<div class="form-group col-sm-8 col-xs-12" style="padding: 0;">
			                        <div class='col-sm-9 col-xs-12' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
								</div>
							</div>
							<div class="form-group" style="margin: 0;">
								<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">摘要2</label>
								<div class="form-group col-sm-8 col-xs-12" style="padding: 0;">
			                        <div class='col-sm-1 col-xs-12' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
			                        <div class='col-sm-8 col-xs-12' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
			                        <div class="form-group col-sm-2 col-xs-12" style="padding:5px 10px; position: absolute; top : -15px; right: 35px; z-index : 1; border: 1px solid #CCC;">
										<div class="radio">
											<label>
												<input type="radio" class="flat" checked name="iCheck"> 自宅
											</label>
										</div>
										<div class="radio">
				                            <label>
				                              <input type="radio" class="flat" name="iCheck"> 住所2
				                            </label>
										</div>
										<div class="radio">
				                            <label>
				                              <input type="radio" class="flat" name="iCheck"> 贈り物
				                            </label>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group" style="margin: 0;">
								<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">顧客メモ</label>
								<div class="form-group col-sm-8 col-xs-12" style="padding: 0;">
			                        <div class='col-sm-9 col-xs-12' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
								</div>
							</div>
							<div class="form-group" style="margin:0">
								<div class="form-group col-sm-12 col-xs-12" style="padding: 0; border: 1px solid #ccc; margin-top: 10px;">
									<table id="datatable-test" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" style="border: none; border-bottom:1px solid #ccc;">
										<thead>
											<tr>
												<th>NO</th>	
												<th>属性</th>
												<th>商品コード</th>
												<th>商品名</th>
												<th>単位</th>
												<th>数量</th>
												<th>売上単価</th>
												<th>売上金額</th>   
											</tr>
										</thead>
									</table>
			                    </div>
							</div>
							<div class="form-group">
								<div class="form-group col-sm-8 col-xs-12" style="margin:0">
									<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">お届け先</label>
									<div class="form-group col-sm-12 col-xs-12" style="margin:0; padding: 10px; border : 1px solid #ccc;">
										<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">商品到着日</label>
										<div class='input-group date col-sm-2 col-xs-12' id='myDatepicker4' style="padding:0; float: left;">
				                            <input type='text' class="form-control" />
				                            <span class="input-group-addon">
				                               <span class="glyphicon glyphicon-calendar"></span>
				                            </span>
			                        	</div>
			                        	<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">時間帯</label>
			                        	<div class='col-sm-1 col-xs-12' style="padding:0;">
			                            	<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        	</div>
			                        	<div class='col-sm-2 col-xs-12' style="padding:0;">
				                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
				                        </div>
				                        <label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">TEL</label>
			                        	<div class='col-sm-4 col-xs-12' style="padding:0;">
			                            	<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        	</div>
			                        	<div class="form-group col-sm-12 col-xs-12" style="margin:0; padding: 0;">
											<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">名前</label>
				                        	<div class='col-sm-11 col-xs-12 input-group' style="padding:0;">
				                            	<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
				                        	</div>
				                        </div>
				                        <div class="form-group col-sm-12 col-xs-12" style="margin:0; padding: 0;">
											<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">〒</label>
				                        	<div class='col-sm-2 col-xs-12 input-group' style="padding:0; float: left;">
				                            	<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
				                        	</div>
				                        	<div class='col-sm-9 col-xs-12' style="padding:0;">
				                            	<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
				                        	</div>
				                        </div>
				                        <div class="form-group col-sm-12 col-xs-12" style="margin:0; padding: 0;">
											<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;"></label>
				                        	<div class='col-sm-2 col-xs-12 input-group' style="padding:0; float: left;">
				                        	</div>
				                        	<div class='col-sm-9 col-xs-12' style="padding:0;">
				                            	<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
				                        	</div>
				                        </div>
									</div>
									<div class="form-group col-sm-12 col-xs-12" style="margin:0; padding: 8px 0 0 0;">
										<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">問合せNo.</label>
			                        	<div class='col-sm-3 col-xs-12 input-group' style="padding:0; float: left;">
			                        		<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        	</div>
			                        	<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">赤伝番</label>
			                        	<div class='col-sm-3 col-xs-12' style="padding:0;">
			                            	<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        	</div>
			                        	<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0;">入金額</label>
			                        	<div class='col-sm-3 col-xs-12' style="padding:0;">
			                            	<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        	</div>
			                        </div>
			                        <div class="form-group col-sm-12 col-xs-12" style="margin:0; padding: 0; text-align:right;">
			                        	<label class="control-label col-sm-9 col-xs-12" for="first-name" style="padding-left:0;"></label>
			                        	<div class='col-sm-3 col-xs-12' style="padding:0;">
			                        		<button type="button" class="btn btn-default" onclick="comm.openModal('.bs-example-modal-lg')">納品請求書</button>
			                            	<button type="button" class="btn btn-default" >入金登録</button>
			                        	</div>
			                        </div>
								</div>
								<div class="form-group col-sm-2 col-xs-12" style="margin:0">
									<label class="control-label col-sm-4 col-xs-12" for="first-name" style="padding-left:0;">値引</label>
			                        <div class='col-sm-8 col-xs-12 input-group' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
			                        <label class="control-label col-sm-4 col-xs-12" for="first-name" style="padding-left:0;">送料</label>
			                        <div class='col-sm-8 col-xs-12 input-group' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
			                        <label class="control-label col-sm-4 col-xs-12" for="first-name" style="padding-left:0;">小計</label>
			                        <div class='col-sm-8 col-xs-12 input-group' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
			                        <label class="control-label col-sm-4 col-xs-12" for="first-name" style="padding-left:0;">内消費税</label>
			                        <div class='col-sm-8 col-xs-12 input-group' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
			                        <label class="control-label col-sm-4 col-xs-12" for="first-name" style="padding-left:0;">合計</label>
			                        <div class='col-sm-8 col-xs-12 input-group' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
			                        <label class="control-label col-sm-4 col-xs-12" for="first-name" style="padding-left:0;">頭金金額</label>
			                        <div class='col-sm-8 col-xs-12 input-group' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
			                        <label class="control-label col-sm-4 col-xs-12" for="first-name" style="padding-left:0;">残金</label>
			                        <div class='col-sm-8 col-xs-12 input-group' style="padding:0;">
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
								</div>
								<div class="form-group col-sm-2 col-xs-12" style="margin:0">
									<label class="control-label col-sm-12 col-xs-12" for="first-name" style="height : 34px; margin-bottom : 5px;"></label>
									<div class="control-label col-sm-12 col-xs-12" style="padding-right:0; text-align: left; margin-bottom : 5px;">
										<div class="checkbox">
											<label style="padding-left:0;">
												<input type="checkbox" class="flat"> 赤伝区分
											</label>
										</div>
									</div>
									<div class="control-label col-sm-12 col-xs-12" style="padding-right:0; margin-bottom : 5px;">
										<label class="control-label col-sm-4 col-xs-12" for="first-name" style="text-align: left; padding-left: 0;">赤伝区分</label>
										<div class="control-label col-sm-8 col-xs-12" style="padding:0; text-align:right;">
											<div class="checkbox">
												<label style="padding-left:0;">
													<input type="checkbox" class="flat"> 着後
												</label>
											</div>
										</div>
									</div>
									<div class="control-label col-sm-12 col-xs-12" style="padding:5px; border : 1px solid #ccc; text-align:left;">
										<div class="col-sm-12 col-xs-12" style="padding: 0;">
											<div class="radio">
												<label style="padding-left:0;">
													<input type="radio" class="flat" checked name="iCheck"> 確認時キャンセル
												</label>
											</div>
				                        </div>
				                        <div class="col-sm-12 col-xs-12" style="padding: 0;">
											<div class="radio">
												<label style="padding-left:0;">
													<input type="radio" class="flat" name="iCheck"> 発注前キャンセル
												</label>
											</div>
				                        </div>
				                        <div class="col-sm-12 col-xs-12" style="padding: 0;">
											<div class="radio">
												<label style="padding-left:0;">
													<input type="radio" class="flat" name="iCheck"> 受取拒否
												</label>
											</div>
				                        </div>
				                        <div class="col-sm-12 col-xs-12" style="padding: 0;">
											<div class="radio">
												<label style="padding-left:0;">
													<input type="radio" class="flat" name="iCheck"> 返品
												</label>
											</div>
				                        </div>
				                        <div class="col-sm-12 col-xs-12" style="padding: 0;">
											<div class="radio">
												<label style="padding-left:0;">
													<input type="radio" class="flat" name="iCheck"> 数量変更
												</label>
											</div>
				                        </div>
				                        <div class="col-sm-12 col-xs-12" style="padding: 0;">
											<div class="radio">
												<label style="padding-left:0;">
													<input type="radio" class="flat" name="iCheck"> 住所不明キャンセル
												</label>
											</div>
				                        </div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal-warp">
	<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<div class="form-group col-sm-12 col-xs-12" style="margin:0">
							<label class="control-label col-sm-12 col-xs-12" for="first-name" style="padding-left:0;">出力条件</label>
						</div>
						<div class="form-group col-sm-2 col-xs-12" style="padding : 5px; border : 1px solid #ccc;">
							<label class="control-label col-sm-12 col-xs-12" for="first-name" style="padding-left:0;">種類</label>
							<div class="col-sm-12 col-xs-12" style="padding: 0;">
								<div class="radio">
									<label style="padding-left:0;">
										<input type="radio" class="flat" name="iCheck"> 届け先用
									</label>
								</div>
	                        </div>
	                        <div class="col-sm-12 col-xs-12" style="padding: 0;">
								<div class="radio">
									<label style="padding-left:0;">
										<input type="radio" class="flat" name="iCheck"> 請求先用
									</label>
								</div>
	                        </div>
						</div>
						<div class="form-group col-sm-4 col-xs-12" style="margin : 0 5px; padding : 5px; border : 1px solid #ccc;">
							<label class="control-label col-sm-12 col-xs-12" for="first-name" style="padding-left:0;">用紙</label>
							<div class="col-sm-12 col-xs-12" style="padding: 0;">
								<div class="radio">
									<label style="padding-left:0;">
										<input type="radio" class="flat" name="iCheck"> パターン1（振込用紙付)
									</label>
								</div>
	                        </div>
	                        <div class="col-sm-12 col-xs-12" style="padding: 0;">
								<div class="radio">
									<label style="padding-left:0;">
										<input type="radio" class="flat" name="iCheck"> パターン2 (お知らせ付)
									</label>
								</div>
	                        </div>
						</div>
						<div class="form-group col-sm-2 col-xs-12" style="padding : 5px; border : 1px solid #ccc;">
							<label class="control-label col-sm-12 col-xs-12" for="first-name" style="padding-left:0;">出荷区分</label>
							<div class="col-sm-12 col-xs-12" style="padding : 0;">
								<div class="radio">
									<label style="padding-left:0;">
										<input type="radio" class="flat" name="iCheck"> 自社
									</label>
								</div>
	                        </div>
	                        <div class="col-sm-12 col-xs-12" style="padding: 0;">
								<div class="radio">
									<label style="padding-left:0;">
										<input type="radio" class="flat" name="iCheck"> 他社 
									</label>
								</div>
	                        </div>
						</div>
						<div class="form-group col-sm-3 col-xs-12">
							<label class="control-label col-sm-12 col-xs-12" for="first-name" style="padding-left:0;"></label>
							<div class="col-sm-12 col-xs-12" style="padding : 0;">
								<div class="checkbox">
									<label style="padding-left:0;">
										<input type="checkbox" class="flat"> 出力済みも出力する
									</label>
								</div>
	                        </div>
						</div>
						<div class="form-group col-sm-12 col-xs-12" style="margin:0">
							<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-top: 8px;">発送日</label>
	                        <div class='col-sm-2 col-xs-12' style="padding:0;">
		                        <div class='input-group date col-sm-12 col-xs-12' id='myDatepicker5'>
		                            <input type='text' class="form-control" />
		                            <span class="input-group-addon">
		                               <span class="glyphicon glyphicon-calendar"></span>
		                            </span>
		                        </div>
	                        </div>
	                        <label class="control-label" style="padding-left:5px; padding-right:5px; padding-top: 8px; float:left;"> ~ </label>
	                        <div class='col-sm-2 col-xs-12' style="padding:0;">
	                            <div class='input-group date col-sm-12 col-xs-12' id='myDatepicker6'>
		                            <input type='text' class="form-control" />
		                            <span class="input-group-addon">
		                               <span class="glyphicon glyphicon-calendar"></span>
		                            </span>
		                        </div>
	                        </div>
	                        <label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-top: 8px;">伝票No.</label>
	                        <div class='col-sm-1 col-xs-12' style="padding:0;">
		                        <div class='input-group col-sm-12 col-xs-12'>
		                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
		                        </div>
	                        </div>
	                        <label class="control-label" style="padding-left:5px; padding-right:5px; padding-top: 8px; float:left;"> ~ </label>
	                        <div class='col-sm-1 col-xs-12' style="padding:0;">
	                            <div class='input-group col-sm-12 col-xs-12'>
		                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
		                        </div>
	                        </div>
	                        <div class='col-sm-1 col-xs-12' style="padding:0; margin-left: 20px;">
	                       		<button type="button" class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-lg">納品</button>
	                       	</div>
	                       	<div class="col-sm-12 col-sm-12 col-xs-12" style="padding:0; border: 1px solid #ccc;">
								<table id="select-table" class="display" style="width : 100%;">
							        <thead>
							            <tr>
							                <th></th>
							                <th class="name">Name</th>
							                <th>Position</th>
							                <th>Office</th>
							                <th>Age</th>
							                <th>Salary</th>
							                <th>Name</th>
							                <th>Position</th>
							                <th>Office</th>
							                <th>Age</th>
							                <th>Salary</th>
							            </tr>
							        </thead>
							        <tbody>
							            <tr>
							                <td></td>
							                <td>Tiger Nixon</td>
							                <td>System Architect</td>
							                <td>Edinburgh</td>
							                <td>61</td>
							                <td>$320,800</td>
							                <td>Tiger Nixon</td>
							                <td>System Architect</td>
							                <td>Edinburgh</td>
							                <td>61</td>
							                <td>$320,800</td>
							            </tr>
									</tbody>
							    </table>
							</div>
							<div class='col-sm-12 col-xs-12' style="padding:0;">
	                   			<label class="control-label col-sm-12 col-xs-12" for="first-name" style="padding-top: 8px;">text text text</label>
	                   		</div>
						</div>
						<div class="form-group col-sm-12 col-xs-12" style="margin:0">
							<div class="form-group col-sm-12 col-xs-12" style="margin:0">
								<label class="control-label col-sm-12 col-xs-12" for="first-name" style="padding-left:0;">印刷設定</label>
							</div>
							<div class="form-group col-sm-10 col-xs-12" style="padding : 5px; border : 1px solid #ccc;">
								<label class="control-label col-sm-12 col-xs-12" for="first-name" style="padding-left:0;">通信欄</label>
								<label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0; text-align: center; padding-top: 8px;">1</label>
								<div class='col-sm-8 col-xs-12' style="padding:0;">
			                        <div class='input-group col-sm-12 col-xs-12'>
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
		                        </div>
		                        <label class="control-label col-sm-1 col-xs-12" for="first-name" style="padding-left:0; clear: both; text-align: center; padding-top: 8px;">2</label>
		                        <div class='col-sm-8 col-xs-12' style="padding:0;">
		                            <div class='input-group col-sm-12 col-xs-12'>
			                            <input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
			                        </div>
		                        </div>
		                        <div class='col-sm-3 col-xs-12' style="padding:0;text-align: center;">
		                            <button type="button" class="btn btn-default" data-dismiss="modal" style="width : 40%;">支払</button>
									<button type="button" class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-lg1" style="width : 40%;">振込</button>
		                        </div>
							</div>
							<div class="form-group col-sm-2 col-xs-12" style="padding : 0;">
								<div class="checkbox" style="padding-left: 10px;">
									<label style="padding-left:0;">
										<input type="checkbox" class="flat"> パターン
									</label>
								</div>
							</div>
						</div>
						<div class="form-group col-sm-12 col-xs-12" style="margin:0">
							<div class="form-group col-sm-4 col-xs-12" style="margin:0; padding: 5px 5px 8px 5px; border : 1px solid #ccc;">
								<div class="form-group col-sm-12 col-xs-12" style="margin:0;">
									<div class="checkbox">
										<label style="padding-left:0;">
											<input type="checkbox" class="flat"> 支払期限
										</label>
									</div>
								</div>
								<div class="form-group col-sm-12 col-xs-12" style="margin:0;">
									<label class="control-label col-sm-4 col-xs-12" for="first-name" style="padding-left:0; padding-top: 8px;">支払期限</label>
									<div class="form-group col-sm-8 col-xs-12" style="margin:0;">
										<input type="text" id="first-name" required="required" class="form-control col-sm-7 col-xs-12">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-lg1">modal2</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade bs-example-modal-lg1" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>
					<h4 class="modal-title" id="myModalLabel">Modal2 title</h4>
				</div>
				<div class="modal-body">
					<input type="text" placeholder="모달 띄우기"/>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-lg2">modal3</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade bs-example-modal-lg2" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>
					<h4 class="modal-title" id="myModalLabel">Modal2 title</h4>
				</div>
				<div class="modal-body">
					<input type="text" placeholder="모달 띄우기"/>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-lg2">modal2</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="/resources/js/test.js"></script>
<!-- /page content -->