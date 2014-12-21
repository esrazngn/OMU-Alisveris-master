<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="omualisveris.ProductDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
	<meta charset="UTF-8">
    <title>Ürünler | OMÜ Alışveriş</title>
    <link rel="stylesheet" href="/css/style.css" type="text/css">
</head>
<body>
	<div id="background-lightyellow">
		background
	</div>
	<div class="page">
		<div class="project-page">
			<div class="sidebar">
				<a href="index.html" id="logo"><img src="/images/logo.png" alt="logo"></a>
				<ul>
					<li class="home">
						<a href="HomePage.aspx">Anasayfa</a>
					</li>
					<li class="about">
						<a href="LoginPage.aspx">Giriş/Kayıt</a>
					</li>
					<li class="selected projects">
						<a href="projects.html">Ürünler</a>
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
						<h3>Ürünün Adı....</h3>
						<div class="navigation">
							<a href="#" id="next">Sonraki Ürün</a>
						</div>
					</div>
					<div class="navigation">
						
					</div>
                   
					<div class="figure">
						<img src="/images/living-room.jpg" alt=""> <span>Açıklama satırı eklenebilir</span>
						<div>
                            <table>
                                <tr>
                                    <td>
							    <h3>İlan no:</h3>
                                        </td>
                                    <tr>
                                        <td> <h3>Fiyat:</h3></td>
                                       
                                    </tr>
                                     
                                    <tr>
                                       <td><input type="button" name ="buy" value="Satın Al"/></td>  
                                    </tr>
                                    </table>
							<p>Açıklamalar</p>
						</div>
					</div>
				</div>
				<div class="footer">
					
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