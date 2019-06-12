<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx" class="no-js">

<style type="text/css">
*        { margin:0; padding: 0; }
body{
         font-family: "맑은 고딕";
         font-size: 0.75em;
         color: #333;
}

#login-form{
         width:300px;
         margin:100px auto;
         border: 1px solid gray;
         border-radius: 5px;
         padding: 15px;
}

#login-form input, #login-form label{
         display:block;
}

#login-form label{
         margin-top: 10px;
}

#login-form input{
         margin-top: 5px;
}

#login-form input[type='image']{
         margin: 10px auto;
}

</style>


	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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


<script type="text/javascript">
   function checkValue() {
      if (!document.registerInfo.user_id.value) {
         alert("社員番号を入力してください。");
         document.registerInfo.user_id.focus();
         document.registerInfo.user_id.select();
         return false;

      } else if (document.registerInfo.user_id.value.indexOf(" ") >= 0) {
          alert("社員番号で空白は入力できません。")
          document.registerInfo.user_id.focus();
          document.registerInfo.user_id.select();
          return false;

      }else if (isNaN(document.registerInfo.user_id.value)) {
          alert("社員番号で数字以外は入力できません。");
          document.registerInfo.user_id.focus();
          document.registerInfo.user_id.select();
          return false;

       }else if (document.registerInfo.user_id.value.length != 10 ) {
          alert("社員番号は10桁です。")
          document.registerInfo.user_id.focus();
          document.registerInfo.user_id.select();
          return false;

      }else if (!document.registerInfo.user_name.value) {
         alert("社員名を入力してください。");
         document.registerInfo.user_name.focus();
         document.registerInfo.user_name.select();
         return false;

      }else if (document.registerInfo.user_name.value.indexOf(" ") >= 0) {
          alert("社員名で空白は入力できません。")
          document.registerInfo.user_name.focus();
          document.registerInfo.user_name.select();
          return false;

      }else if (isNaN(document.registerInfo.user_name.value)==false) {
          alert("社員名で文字列以外は入力できません。");
          document.registerInfo.user_name.focus();
          document.registerInfo.user_name.select();
          return false;

      }

   }



   var fail = "${sessionScope.fail}";
   	if(fail == 1 ){
   		alert("すでに登録しています。");
   		<%
   		HttpSession fail = request.getSession();
   		fail.removeAttribute("fail");
   		%>
   	}




</script>



		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
			<!--
			CSS
			============================================= -->
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
				        <a href="index.jsp"><img src="img/1.png" weith="100" height="50" alt="" title="" /></a>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">






				            <ul>


				            </ul>
				          </li>
				        </ul>
				  			
				      </nav><!-- #nav-menu-container -->
			    	</div>
			    </div>
			  </header><!-- #header -->











			<!-- start blog Area -->
			<section class="blog-area section-gap" id="blog">
				<div class="container">



<h1>新規登録</h1>
<form name="registerInfo" action="register.do" method="post" onsubmit="return checkValue()">
    <fieldset style="width:500; height:300">
        <legend>入力フォーム</legend>
        <table class="regist_table">
            <tr>
                <th style="width:100px" scope="row"><label for="user_id">社員番号</label></th>
                <td><input type="text" id="user_id" name="user_id" placeholder="　例）　2019001001"/></td>
            </tr>

            <tr>
                <th scope="row"><label for="user_name">社員名</label></th>
                <td><input type="text" id="user_name" name="user_name" placeholder="　例）　やまもと"/></td>
            </tr>

        </table>
        <div class="form_btn">
            <input type="submit" value="　登録　" onclick="formValidate();" />
            <input type="reset" value="　再作成　" />
        </div>
    </fieldset>
</form>



					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">





							</div>
						</div>
					</div>
					<div class="row">





					</div>
				</div>
			</section>
			<!-- end blog Area -->











	<!-- Start Contact Area -->
			<section class="contact-area" id="contact">
				<div class="container-fluid">









		<div class="row align-items-center d-flex justify-content-start">

						<div class="col-lg-4 col-md-12 pt-100 pb-100">

						</div>
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
								<p>
									ＵＴＡＣＣの便利なものを作るＩＴＳの人です、次の開発は何とするか期待されるように頑張っています。
								</p>
							</div>
						</div>
						<div class="col-lg-4  col-md-6 col-sm-6">
							<div class="single-footer-widget">
								<h4 class="text-white">私たちに連絡は</h4>
								<p>
									分からないこととかエーラとかを発見したらすぐ連絡ください。
								</p>
								<p class="number">
									080-3394-4674 <br>

								</p>
							</div>
						</div>





					</div>
					<div class="footer-bottom d-flex justify-content-between align-items-center flex-wrap">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            <p class="footer-text m-0">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This Site is made by ITS</p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						<div class="footer-social d-flex align-items-center">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-dribbble"></i></a>
							<a href="#"><i class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</footer>
			<!-- End footer Area -->

			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="js/vendor/bootstrap.min.js"></script>
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
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



