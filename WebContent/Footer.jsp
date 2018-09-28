<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Footer</title>
</head>
<body>
		<div class="footer">
			<div class="centragefooter">
				<div class="liens">
					<p>
						<strong>Reste connecté.e sur les réseaux</strong>
					</p>
					<br>
					<div class="iconesfooter">
						<h4>
							<a href="https://www.facebook.com" target="_blank"><img
								src="http://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19761.png"
								alt="Logo facebook"></a> <a href="https://www.snapchat.com"
								target="_blank"><img
								src="https://focussnapeat.com/wp-content/uploads/2016/06/snapcodes.png"
								alt="logo Snapchat"></a> <a href="https://www.twitter.com"
								target="_blank"><img
								src="https://www.unet.cz/blog/wp-content/uploads/2017/11/Twitter_logo00.png"
								alt="Logo twitter"></a> <a href="https://www.instagram.com"
								target="-blank"><img
								src="https://blog.opennemas.com/media/blog/images/2017/11/21/2017112117323379600.png"
								alt="Logo insta"></a>
						</h4>
					</div>
				</div>
				<div class="newsletter">
					<form action="NewsletterLet" method="post">
						<p>
							<strong>Pour t'inscrire à la newsletter</strong>
						</p>
						<br>
						<p>
							Email <input type="text" name="email">
						</p>
						<p>
							<input type="submit" value="Je m'inscris!" style="background-color: #ff5c39">
						</p>
					</form>
					<p>${confirmNewsletter}</p>
				</div>
			</div>
			<div class="infos">
				<p>
					Contact | Conditions générales d'utilisation | Qui sommes-nous? <br>
					<br>Rocket! 2018 Tous droits réservés
				</p>
			</div>
		</div>


</body>
</html>