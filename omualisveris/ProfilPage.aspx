<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilPage.aspx.cs" Inherits="omualisveris.ProfilPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="UTF-8">
<title>Profil | OMÜ Alışveriş</title>
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
						<a href="ProfilPage.aspx">Profil</a>
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
     <h3>BİLGİLERİNİZ</h3>
    <table>
        <tr>
            <td>
   <p>Kullanici Adınız</p> 
            </td>
            <td><p>#</p></td>
        </tr>
        <tr>
            <td><p>    E-posta Adresiniz

</p>
            </td>
            <td><p>#</p></td>
        </tr><tr>
            <td>
    <p>Adınız</p>
            </td>
            <td><p>#</p></td>
        </tr><tr>
            <td>
 <p>Soyadınız
</p>               </td>
            <td><p>#</p></td>
        </tr><tr>
            <td><p>Telefon Numaranız</p>
    
            </td>
            <td><p>#</p></td>
        </tr>
    </table>
   <br /><br />
    
    


    <form id="register">
        
        <div class="header">
        
            <h3>Şifre Değiştir</h3>
            
            <p>Yeni şifrenizi giriniz</p>
            
        </div>
        

        <div class="inputs">
            
                        <input type="password" name="password" placeholder="Şifre" />
                        <input type="password" name="password2" placeholder="Şifre(tekrar)" />
                       
            <a id="submit" href="#">ŞİFRE DEĞİŞTİR</a>
        
        </div>
       
    </form>
    <br /><br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />



</div>

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