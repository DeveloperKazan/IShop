<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>&lt;/&gt;DevStudy.net - IShop layout</title>
<link href="/ishop_war_exploded/static/css/bootstrap.css" rel="stylesheet">
<link href="/ishop_war_exploded/static/css/bootstrap-theme.css" rel="stylesheet">
<link href="/ishop_war_exploded/static/css/font-awesome.css" rel="stylesheet">
<link href="/ishop_war_exploded/static/css/app.css" rel="stylesheet">
</head>
<body>
	<header>
		<jsp:include page="fragment/header.jsp" />
	</header>
	<div class="container-fluid">
		<div class="row">
			<aside class="col-xs-12 col-sm-4 col-md-3 col-lg-2">
				<jsp:include page="fragment/aside.jsp" />
			</aside>
			<main class="col-xs-12 col-sm-8 col-md-9 col-lg-10"> 
				<jsp:include page="${currentPage }" /> 
			</main>
		</div>
	</div>
	<footer class="footer">
		<jsp:include page="fragment/footer.jsp" />
	</footer>
	<script src="/ishop_war_exploded/static/js/jquery.js"></script>
	<script src="/ishop_war_exploded/static/js/bootstrap.js"></script>
	<script src="/ishop_war_exploded/static/js/app.js"></script>
</body>
</html>