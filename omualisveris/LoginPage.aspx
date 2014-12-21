<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="omualisveris.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="UTF-8">
<title>Giriş/Kayıt | OMÜ Alışveriş</title>
    	<link rel="stylesheet" href="/css/style.css" type="text/css">
    	<link rel="stylesheet" href="/css/css.css" type="text/css">

</head>
<body>
	<div id="background-yellow">
		background
	</div>
	<div class="page">
		<div class="about-page">
			<div class="sidebar">
				<a href="index.html" id="logo"><img src="/images/logo.png" alt="logo"></a>
				<ul>
					<li class="home">
						<a href="HomePage.aspx">Anasayfa</a>
					</li>
					<li class="selected about">
						<a href="LoginPage.aspx">Giriş/Kayıt</a>
					</li>
					<li class="projects">
						<a href="ProductDetails.aspx">Ürünler</a>
					</li>
					
					<li class="contact">
						<a href="Contact.aspx">İletişim</a>
					</li>
				</ul>
				
			</div>
			<div class="body">
				<div class="content-about">
					<div>
					
						<div>
<div class="container">

    <form id="register">
        
        <div class="header">
        
            <h3>Giriş Yap</h3>
                        <p>Giriş yapmak için bilgilerinizi giriniz.</p>            
        </div>
        <div class="inputs">
            <input type="email" name="id" placeholder="Kullanıcı Adı" autofocus />
            <input type="password" name="password" placeholder="Şifre" />
            <a id="submit" href="#">GİRİŞ YAP</a>
        
        </div>
       
    </form>
    <form id="register">
        
        <div class="header">
        
            <h3>Kayıt Ol</h3>
            
            <p>Üye kaydı için aşağıdaki formu doldurunuz.</p>
            
        </div>
        

        <div class="inputs">
            <input type="email" name="id" placeholder="Kullanıcı Adı" autofocus />
                        <input type="password" name="password" placeholder="Şifre" />
                        <input type="password" name="password2" placeholder="Şifre(tekrar)" />
                        <input type="email" name="emailadress" placeholder="E-posta" autofocus />


            <input type="email" name="name" placeholder="Adınız" autofocus />
                        <input type="email" name="surname" placeholder="Soyadınız" autofocus />
                        <input type="email" name="phonenumber" placeholder="Telefon" />



            <input type="email" name="adress" placeholder="Adresiniz" autofocus />


                       

           
            
            <a id="submit" href="#">KAYIT OL</a>
        
        </div>
       
    </form>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>

</form>
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