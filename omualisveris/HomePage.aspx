<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="omualisveris.Pages.HomePage" %>

<!DOCTYPE html>

<html >

<head runat="server">
	<meta charset="UTF-8">
		<title>Anasayfa | OMÜ Alışveriş</title>

	<link rel="stylesheet" href="/css/style.css" type="text/css">
</head>
<body>
	<div id="background-green">
		background
	</div>
	<div class="page">
		<div class="home-page">
			<div class="sidebar">
				<a href="HomePage.aspx" id="logo"><img src="/images/logo.png" alt="logo"></a>
				<ul>
					<li class="selected home">
						<a href="HomePage.aspx">Anasayfa</a>
					</li>
					<li class="about">
						<a href="LoginPage.aspx">Giriş/Kayıt</a>
					</li>
					<li class="projects">
						<a href="ProductDetails.html">Ürünler</a>
					</li>
					
					<li class="contact">
						<a href="Contact.aspx">İletişim</a>
					</li>
				</ul>
				<div class="connect">
					<a href="http://freewebsitetemplates.com/go/facebook/" id="fb">facebook</a> <a href="http://freewebsitetemplates.com/go/twitter/" id="twitter">twitter</a> <a href="http://freewebsitetemplates.com/go/googleplus/" id="googleplus">google+</a> <a href="http://freewebsitetemplates.com/go/youtube/" id="youtube">youtube</a>
				</div>
			</div>
			<div class="body">
				<div class="content-project">
					<div>
						<h3>Ürünlerimiz</h3>
					</div>
					
					<div>
                        <p>Açıklamalar vs vs </p>
						<ul>
							<li>
								<a href="urun#"><img src="images/project-gallery1.jpg" alt=""></a> <span><a href="urun#">Açıklama 1</a></span>
							</li>
							<li>
								<a href="urun#"><img src="images/project-gallery2.jpg" alt=""></a> <span><a href="urun#">Açıklama 2</a></span>
							</li>
							<li>
								<a href="urun#"><img src="images/project-gallery3.jpg" alt=""></a> <span><a href="urun#">Açıklama 3</a></span>
							</li>
							<li>
								<a href="urun#"><img src="images/project-gallery4.jpg" alt=""></a> <span><a href="urun#">Açıklama 4</a></span>
							</li>
							<li>
								<a href="urun#"><img src="images/project-gallery5.jpg" alt=""></a> <span><a href="urun#">Açıklama 5</a></span>
							</li>
							<li>
								<a href="urun#"><img src="images/project-gallery6.jpg" alt=""></a> <span><a href="urun#">Açıklama 6</a></span>
							</li>
						</ul>
						<div class="paging">
							<ul>
								<li class="selected">
									<a href="#">1</a>
								</li>
								<li>
									<a href="#">2</a>
								</li>
								<li>
									<a href="#">></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="footer">
					<p>
						&#169; 2023 Origins Interior Architects
					</p>
					<ul>
						<li>
							<a href="index.html">Home</a>
						</li>
						<li>
							<a href="about.html">About</a>
						</li>
						<li>
							<a href="projects.html">Projects</a>
						</li>
						<li>
							<a href="blog.html">Blog</a>
						</li>
						<li>
							<a href="contact.html">Contact</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>