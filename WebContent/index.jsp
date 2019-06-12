<%@page import="member.model.OrderDTO"%>
<%@page import="member.dao.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="member.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx" class="no-js">
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	font-family: "맑은 고딕";
	font-size: 0.75em;
	color: #333;
}

#login-form {
	width: 300px;
	margin: 100px auto;
	border: 1px solid gray;
	border-radius: 5px;
	padding: 15px;
}

#login-form input, #login-form label {
	display: block;
}

#login-form label {
	margin-top: 10px;
}

#login-form input {
	margin-top: 5px;
}

#login-form input[type='image'] {
	margin: 10px auto;
}
</style>

<script type="text/javascript">
	var message = '<%=request.getAttribute("message")%>';
			switch(message){

			case 'null':
				break;
			default :
				alert(message);
			}

	function checkCancel(){
	    var bool = confirm('本日の注文をキャンセルしますか。');
	    if(bool){
	       return true;
	    }else{
	    	return false;
	    }
	    return false;
	}

	function changeView(value) {

		if (value == "0")
		{
			location.href = "MainForm.jsp";
		} else if (value == "1")
		{
			location.href = "login.jsp";
		} else if (value == "2")
		{
			location.href = "logout.do";
		}
	}


	var join = "${sessionScope.join}";
	if(join == 1 ){
		alert("登録完了。");
	}

var login = "${sessionScope.login}";
   	if(login == 1){
   		alert("ログイン完了。");
   	}

	var order = "${sessionScope.order}";
		if(order == 1){
			alert("注文完了。");
	}
var order2 = "${sessionScope.order2}";
	if(order2 == 1){
			alert("すでに注文が入りました。");
	}


</script>

<%
HttpSession login = request.getSession();
login.removeAttribute("login");
login.removeAttribute("join");
login.removeAttribute("order");
login.removeAttribute("order2");
%>

<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="img/fav.png">
<!-- Author Meta -->
<meta name="author" content="codepixer">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">


<!-- Site Title -->
<title>ＵＴＡＣＣの昼食弁当注文</title>
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
<link rel="stylesheet" href="css/linearicons.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/main.css">
</head>



<body>


	<header id="header" id="home">
	<div class="container">
		<div class="row align-items-center justify-content-between d-flex">
			<div id="logo">
				<a href="index.jsp"><img src="img/1.png" weith="100" height="50"
					alt="" title="" /></a>
			</div>
			<nav id="nav-menu-container">
			<ul class="nav-menu">
				<li class="menu-active"><a href="#home">トップ</a></li>
				<li><a href="#dish">メニュー</a></li>
				<li><a href="#introduce">弁当の店</a></li>
				<li><a href="#blog">ギャラリー</a></li>
				<%MemberDTO dto = (MemberDTO)session.getAttribute("session");%>
			<c:if test="${sessionScope.session==null}">
				<li class="current_page_item" onclick="changeView(1)">
				<a href="login.jsp">ログイン</a>
				</li>
			</c:if> <c:if test="${sessionScope.sessionConfirm=='0'}">
				<li class="current_page_item" onclick="changeView(2)">
				<a href="logout.do">ログアウト</a>
				</li>
			</c:if>


			</ul>
			
			</nav>
			<!-- #nav-menu-container -->
		</div>
	</div>
	</header>
	<!-- #header -->

	<!-- start banner Area -->
	<section class="banner-area relative" id="home">

	<div class="container">
		<div
			class="row fullscreen d-flex align-items-center justify-content-start">
			<div class="banner-content col-lg-8 col-md-12">
				<h4 class="text-black text-uppercase"></h4>

				<h1></h1>
				<p class="text-black"></p>

			</div>
		</div>
	</div>
	</section>
	<!-- End banner Area -->

	<!-- Start top-dish Area -->
	<section class="top-dish-area section-gap" id="dish">
	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="menu-content pb-60 col-lg-8">
				<div class="title text-center">
					<h1 class="mb-10">今日のメニュー</h1>
					<p>美味しいそうなものを選んでみましょう。</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="single-dish col-lg-4">
				<div class="thumb">
					<img class="img-fluid" src="img/98f54eac-s.jpg" width="300"
						height="200" alt="">
				</div>
				<h4 class="text-uppercase pt-20 pb-20">エビフライセット ￥５５０</h4>
				<p>老若男女問わず日本一のメニューです。毎日新鮮な野菜とエビを使っています。</p>
			</div>
			<div class="single-dish col-lg-4">
				<div class="thumb">
					<img class="img-fluid" src="img/Bento_001.jpg" width="300"
						height="200" alt="">
				</div>
				<h4 class="text-uppercase pt-20 pb-20">魚フライセット ￥６５０</h4>
				<p>豚肉が入ったトンカツと違って主に白身を使われる魚フライセット</p>
			</div>
			<div class="single-dish col-lg-4">
				<div class="thumb">
					<img class="img-fluid" src="img/160426_steak2160.png" width="300"
						height="200" alt="">
				</div>
				<h4 class="text-uppercase pt-20 pb-20">焼肉セット ￥７５０</h4>
				<p>日本全国から集めた最高のレベルの牛肉で作りました。</p>
			</div>
		</div>
	</div>

<br><br><br>

	<div class="container">
		<c:if test="${sessionScope.sessionConfirm=='0'}">

			<form name="orderInfo" action="order.do" method="post">
				<label class="legend">
				<h3>弁当を選んでください。</h3>
				</label>
				<br>
				<input type="hidden" name="user_id" value="<%=dto.getUser_id()%>" />
				<br>
				<select name="user_order">
				    <option value="エビフライセット">エビフライセット</option>
				    <option value="魚フライセット">魚フライセット</option>
				    <option value="焼肉セット">焼肉セット</option>
				</select>
				<br>
				 <input type = "submit" value = "　注文　" onclick="formValidate()"/>
			</form>



	</div>


	</section>
	<!-- End top-dish Area -->





	<div class="container">
		<%
    MemberDAO dao = new MemberDAO();
    ArrayList<OrderDTO> list = dao.orderlist(dto.getUser_id());
    ArrayList<OrderDTO> todayList = dao.todayOrderList(dto.getUser_id());
%>
<div class="title text-center">

					<h1 class="mb-10">注文リスト</h1>
					<p>みなさんが注文した弁当を見せてくれます。</p>
				</div>
				<br><br>
		<table width="600" cellpadding="3">
			<tr>
				<th width="80">社員番号</th>
				<th width="200">注文</th>
				<th width="80">日付</th>
				<th></th>
			</tr>
			<%
    for(int i=0;i<todayList.size();i++){
        OrderDTO b = todayList.get(i);
%>
			<tr>
				<td><%=b.getUser_id()%></td>
				<td><%=b.getUser_order()%></td>
				<td><%=b.getUser_date()%></td>
				<td>
						<form name="orderCancel" action="cancel.do" method="post">
							<input type="hidden" name="user_id" value="<%=dto.getUser_id()%>" />
							<input type="hidden" name="user_date"
								value="<%=b.getUser_date()%>" /> <input type="submit"
								value="キャンセル" onclick="return checkCancel()" width = "8px" height = "3px"/>
						</form>
				</td>
			</tr>
			<%
    }//for
%>
<%
    for(int i=0;i<list.size();i++){
        OrderDTO b = list.get(i);
%>
			<tr>
				<td><%=b.getUser_id()%></td>
				<td><%=b.getUser_order()%></td>
				<td><%=b.getUser_date()%></td>
				<td>	</td>
			</tr>
			<%
    }//for
%>
		</table>

　</c:if>
	</div>
	</section>
	<!-- End top-dish Area -->

	<br>
	<br>




	<!-- Start video Area -->
	<section class="video-area" id = "introduce">
	<div class="container">
		<div class="row justify-content-center align-items-center flex-column">
			<a class="play-btn"
				href="https://www.youtube.com/watch?v=Ms7p01rJQtA"> <img
				src="img/play-1173495_640.png" width="100" height="100" alt="">
			</a>
			<h3 class="pt-20 pb-20 text-black">いつも新鮮な弁当を作ります。</h3>
			<p class="text-black">押したらユーチューブの映像がポップアップされます。</p>
		</div>
	</div>
	</section>
	<!-- End video Area -->






	<!-- Start team Area -->
	<section class="team-area section-gap" id="chefs">
	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="menu-content pb-70 col-lg-8">
				<div class="title text-center">
					<h1 class="mb-10">日本一のシェフたちの紹介</h1>
					<p>ミシュランがお勧めするレストランのシェフたちが美味しいご飯を作ります。</p>
				</div>
			</div>
		</div>
		<div class="row justify-content-center d-flex align-items-center">
			<div class="col-md-3 single-team">
				<div class="thumb">
					<img class="img-fluid" src="img/t1.jpg" alt="">
					<div class="align-items-center justify-content-center d-flex">
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a>
					</div>
				</div>
				<div class="meta-text mt-30 text-center">
					<h4>エセル·デイビス</h4>
					<p>管理ディレクター</p>
				</div>
			</div>
			<div class="col-md-3 single-team">
				<div class="thumb">
					<img class="img-fluid" src="img/t2.jpg" alt="">
					<div class="align-items-center justify-content-center d-flex">
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a>
					</div>
				</div>
				<div class="meta-text mt-30 text-center">
					<h4>ロドニー·クーパー</h4>
					<p>クリエイティブ·アート·ディレクター</p>
				</div>
			</div>
			<div class="col-md-3 single-team">
				<div class="thumb">
					<img class="img-fluid" src="img/t3.jpg" alt="">
					<div class="align-items-center justify-content-center d-flex">
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a>
					</div>
				</div>
				<div class="meta-text mt-30 text-center">
					<h4>ドラウォーカー</h4>
					<p>シニアコア開発者</p>
				</div>
			</div>
			<div class="col-md-3 single-team">
				<div class="thumb">
					<img class="img-fluid" src="img/t4.jpg" alt="">
					<div class="align-items-center justify-content-center d-flex">
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a>
					</div>
				</div>
				<div class="meta-text mt-30 text-center">
					<h4>レナケラー</h4>
					<p>クリエイティブ·コンテンツ·開発者</p>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- End team Area -->

	<!-- start blog Area -->
	<section class="blog-area section-gap" id="blog">
	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="menu-content pb-70 col-lg-8">
				<div class="title text-center">
					<h1 class="mb-10">最近のメニュー</h1>
					<p>最近作られたメニューの写真です。</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3 col-md-6 single-blog">
				<div class="thumb">
					<img class="img-fluid" src="img/02650_001.jpg" alt="">
				</div>
				<p class="date">10 Jan 2018</p>
				<a href="#"><h4>キノコ弁当</h4></a>
				<p>新鮮なきのこを使って料理します。</p>
				<div class="meta-bottom d-flex justify-content-between">

				</div>
			</div>
			<div class="col-lg-3 col-md-6 single-blog">
				<div class="thumb">
					<img class="img-fluid" src="img/40267662.jpg" alt="">
				</div>
				<p class="date">10 Jan 2018</p>
				<a href="#"><h4>ジャガイモ弁当</h4></a>
				<p>北海道産ジャガイモで料理します。</p>
				<div class="meta-bottom d-flex justify-content-between">

				</div>
			</div>
			<div class="col-lg-3 col-md-6 single-blog">
				<div class="thumb">
					<img class="img-fluid" src="img/108984663.jpg" alt="">
				</div>
				<p class="date">10 Jan 2018</p>
				<a href="#"><h4>ステーキ弁当</h4></a>
				<p>神戸の和牛で作られました。</p>
				<div class="meta-bottom d-flex justify-content-between">

				</div>
			</div>
			<div class="col-lg-3 col-md-6 single-blog">
				<div class="thumb">
					<img class="img-fluid" src="img/images.jpg" alt="">
				</div>
				<p class="date">10 Jan 2018</p>
				<a href="#"><h4>卵焼き弁当</h4></a>
				<p>福岡風の卵焼き</p>
				<div class="meta-bottom d-flex justify-content-between">

				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- end blog Area -->





	<!-- Start Contact Area -->
	<section class="contact-area" id="contact">
	<div class="container-fluid">




		<div class="row align-items-center d-flex justify-content-start">

			<div class="col-lg-4 col-md-12 pt-100 pb-100"></div>
		</div>
	</div>
	</section>
	<!-- End Contact Area -->




	<!-- start footer Area -->
	<footer class="footer-area section-gap">
	<div class="container">
		<div class="row">
			<div class="col-lg-3  col-md-6 col-sm-6">
				<div class="single-footer-widget">
					<h4 class="text-white">私たちは</h4>
					<p>ＵＴＡＣＣの社員たちに美味しい弁当を会社です、毎日違う弁当で期待されるように頑張っています。</p>
				</div>
			</div>
			<div class="col-lg-4  col-md-6 col-sm-6">
				<div class="single-footer-widget">
					<h4 class="text-white">連絡</h4>
					<p>団体注文承ります。</p>
					<p class="number">
						０８０-１００４-１００４ <br>

					</p>
				</div>
			</div>





		</div>
		<div
			class="footer-bottom d-flex justify-content-between align-items-center flex-wrap">
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			<p class="footer-text m-0">
				Copyright &copy;
				<script>document.write(new Date().getFullYear());</script>
				All rights reserved | This Site is made by ITS
			</p>
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			<div class="footer-social d-flex align-items-center">
				<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a> <a href="#"><i
					class="fa fa-dribbble"></i></a> <a href="#"><i
					class="fa fa-behance"></i></a>
			</div>
		</div>
	</div>
	</footer>
	<!-- End footer Area -->

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="js/easing.min.js"></script>
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/parallax.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/main.js"></script>
</body>
</html>



