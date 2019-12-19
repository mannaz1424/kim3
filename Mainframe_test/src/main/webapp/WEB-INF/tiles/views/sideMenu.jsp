<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="col-md-3 left_col">
		<div class="left_col scroll-view">
			<div class="navbar nav_title" style="border: 0;">
				<a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a>
			</div>
			
			<div class="clearfix"></div>
			
			<!-- menu profile quick info -->
			<div class="profile clearfix">
				<div class="profile_pic">
					<img src="/resources/images/img.jpg" alt="..." class="img-circle profile_img">
				</div>
				<div class="profile_info">
					<span>Welcome,</span>
					<h2>John Doe</h2>
				</div>
			</div>
			<!-- /menu profile quick info -->
			<br />
			<!-- sidebar menu -->
			<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
				<div class="menu_section">
					<h3>メインメニュー</h3>
					<ul class="nav side-menu">
						<li><a><i class="fa fa-home"></i> 売上管理 <span class="fa fa-chevron-down"></span></a>
							<ul class="nav child_menu">
								<li><a href="#">売上登録</a></li>
								<li><a href="#">出荷データ作成 (郵便局)</a></li>
								<li><a href="#">対応登録</a></li>
								<li><a href="#">出荷チェック</a></li>
								<li><a href="#">出荷データ取込 (郵便局)</a></li>
								<li><a href="#">売上日報</a></li>
								<li><a href="#">納品請求書</a></li>
							</ul>
						</li>
						<li><a><i class="fa fa-edit"></i> 入金管理 <span class="fa fa-chevron-down"></span></a>
							<ul class="nav child_menu">
								<!-- 등록 한자 깨짐 -->
								<li><a href="#">入金登録</a></li>
								<li><a href="#">入金日報</a></li>
								<!-- 등록 한자 깨짐 -->
								<li><a href="#">自動入金登録</a></li>
								<!-- 일람 한자 깨짐 -->
								<li><a href="#">未入金一覧</a></li>
								<!-- 등록 한자 깨짐 -->
								<li><a href="#">信販自動入金登録</a></li>
								<!-- 취입 한자 깨짐 -->
								<li><a href="#">ファクタリング自動取込</a></li>
							</ul>
						</li>
						<li><a><i class="fa fa-desktop"></i> 顧客管理 <span class="fa fa-chevron-down"></span></a>
							<ul class="nav child_menu">                      
								<li><a href="#">顧客登録</a></li>
								<li><a href="#">定期プラン登録</a></li>
								<!-- 조회 한자 깨짐 -->
								<li><a href="#">顧客照会</a></li>
								<li><a href="#">定期データ売上作成</a></li>
								<!-- 회수 한자 깨짐 -->
								<li><a href="#">末回収リスト</a></li>
								<!-- 매상 한자 깨짐 -->
								<li><a href="#">定期売上予定リスト</a></li>
							</ul>
						</li>
						<li><a><i class="fa fa-table"></i> 在庫管理 <span class="fa fa-chevron-down"></span></a>
							<ul class="nav child_menu">
								<!-- 등록 한자 깨짐 -->
								<li><a href="#">入出庫登録</a></li>
								<li><a href="#">入出庫日報</a></li>
								<!-- 일람 한자 깨짐 -->
								<li><a href="#">在庫一覧表</a></li>
								<li><a href="#">棚卸管理</a></li>
								<li><a href="#">在庫ユーティリティー</a></li>
							</ul>
						</li>
						<!-- 특별처리 한자 깨짐 -->
						<li><a><i class="fa fa-bar-chart-o"></i> 特別処理 <span class="fa fa-chevron-down"></span></a>
							<ul class="nav child_menu">
								<li><a href="#">売掛金残高一覧</a></li>
								<li><a href="#">CSV出力</a></li>
								<li><a href="#">成績表</a></li>
								<li><a href="#">キャンセルー一覧</a></li>
								<li><a href="#">管理カード出力</a></li>
								<li><a href="#">ログ参照 (販管)</a></li>
								<li><a href="#">商品別売上一覧</a></li>
								<li><a href="#">郵便番号チェック</a></li>
								<li><a href="#">締切処理</a></li>
								<li><a href="#">DS効果出力</a></li>
							</ul>
						</li>
						<li><a><i class="fa fa-clone"></i>各種設定 <span class="fa fa-chevron-down"></span></a>
							<ul class="nav child_menu">
								<!-- 등록 한자 깨짐 -->
								<li><a href="7_01">商品登録</a></li>
								<li><a href="7_02">担当者登録</a></li>
								<li><a href="7_03">担当者部門登録</a></li>
								<li><a href="7_04">担当者支店登録</a></li>
								<li><a href="7_05">きっかけ登録</a></li>								
								<li><a href="7_06">きっかけ分類登録</a></li>
								<li><a href="7_07">チラシ登録</a></li>
								<li><a href="7_08">休日マスタ</a></li>
								<li><a href="7_09">信販会社マスタ</a></li>
								<li><a href="7_10">発送日マスタ</a></li>
								<li><a href="7_11">定番セットマスタ</a></li>
								<li><a href="7_12">自社設定</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<!-- /sidebar menu -->
			<!-- /menu footer buttons -->
			<div class="sidebar-footer hidden-small">
				<a data-toggle="tooltip" data-placement="top" title="Settings">
					<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
				</a>
				<a data-toggle="tooltip" data-placement="top" title="FullScreen">
					<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
				</a>
				<a data-toggle="tooltip" data-placement="top" title="Lock">
					<span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
				</a>
				<a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
					<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
				</a>
			</div>
			<!-- /menu footer buttons -->
		</div>
	</div>
	<!-- top navigation -->
	<div class="top_nav">
		<div class="nav_menu">
			<nav>
				<div class="nav toggle">
					<a id="menu_toggle"><i class="fa fa-bars"></i></a>
				</div>
			</nav>
		</div>
	</div>
	<!-- /top navigation -->