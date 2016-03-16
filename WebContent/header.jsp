<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header>
	<div class="container">
		<nav class="navbar navbar-default" style="background-color: white"
			role="navigation">
			<div class="row">
				<div class="col-md-12">
					<ul class="nav nav-justified nav-pills">
						<li class="active"><a href="#">Автомобили</a></li>
						<li><a href="#">Джипове</a></li>
						<li><a href="#">Бусове</a></li>
						<li><a href="#">Камиони</a></li>
						<li><a href="#">Мотоциклети</a></li>
						<li><a href="#">Селскостопански</a></li>
						<li><a href="#">Индустриални</a></li>
						<li><a href="#">Кари</a></li>
						<li><a href="#">Каравани</a></li>
						<li><a href="#">Ремаркета</a></li>
						<li><a href="#">Велосипеди</a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-5">
					<a href="#" style="float: right"> <img alt="Logo"
						src="images/logo.png">
					</a>
				</div>
				<div class="col-md-7" style="margin-top: 15px;">
					<div class="row">
						<form action="Login" method="POST"
							class="row navbar-form navbar-left form-inline" target="_blank">
							<input type="email" name="email" class="form-control" id="email"
								placeholder="Е-мейл" required
								oninvalid="this.setCustomValidity('Моля въведете валиден е-мейл.')"
								oninput="setCustomValidity('')"> <input type="password"
								name="pass" id="pass" class="form-control" placeholder="Парола"
								required
								oninvalid="this.setCustomValidity('Моля въведете парола.')"
								oninput="setCustomValidity('')"> <input type="submit"
								class="btn btn-success form-control" value="Вход">
						</form>
					</div>
					
<%!
public String funct(String s){
	if( s.equals("/main.jsp")){
		return "main";
	}
	if( s.equals("/search.jsp")){
		return "search";
	}
	if( s.equals("/publish.jsp")){
		return "publish";
	}
	return null;
}
%>

<%= funct(request.getServletPath()) %>

<script>
	$( document ).ready(function() {
		var currentPage = "<%= funct(request.getServletPath()) %>";
		$('#' + currentPage).addClass('active');
	});
</script>
					
					
					<div class="row" style="margin-left: 0px; margin-top: 5px;">
						<ul id="tabs_root" class="row nav navbar-left nav-pills">
							<li id="main"><a href="main.jsp">Начало</a>
							<li id="search"><a href="search.jsp">Търсене</a>
							<li id="publish"><a href="publish.jsp">Публикуване</a>
							<li id="news"><a href="http://automedia.investor.bg/">Новини</a>
							<li id="forum"><a href="#">Форум</a>
							<li id="contacts"><a href="#">Контакти</a>
							<li id="myMobile"><a href="#">Моето мобиле</a>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</div>
</header>