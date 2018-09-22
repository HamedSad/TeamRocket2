<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.2/semantic.min.css">
<link rel="stylesheet" href="Style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
	integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="print.css" media="print">
<link rel="icon" type="image/png" href="http://image.noelshack.com/fichiers/2018/38/5/1537535762-logo.png" />
<title>Rocket!</title>
</head>

<body>

	<div class="wrapp">

		<div class="header">

			<div class="rocket">
				<img src="Images/logo.png" width="100" height="70" align="left">


			</div>

			<div class="pageprincipale" align="right">
				<form action="LoginUserLet" method="post">
					<p><input type="text" name="pseudo" required minlength="6"maxlength="100" placeholder="Pseudo"></p>
					<br>
					<p><input type="password" name="mdp" required minlength="8"maxlength="100" placeholder="Mot de passe "></p>
					<br> <input type="submit" value="Se connecter!">
					<p>${error}</p>
				</form>
			</div>

		</div>

		<div class="partie2">

			<div class="logo">
				<h1>Booste tes événements avec Rocket!</h1><br>
				<p>Rocket t'aide à <strong>promouvoir tes événements</strong> en te mettant en relation avec des dizaines de participants</p>
				<p>En plus, les participants peuvent t'aider sous forme de dons <strong>solidaires et sécurisés</strong></p>
				<p><strong>C'est simple, rapide et 100% gratuit !</strong></p><br>
			</div>
		</div>
		
		
		<div class="row">
		
		   <div class="card text-center" style="width: 20rem">
             <img class="card-img-top" src="http://thesincuragroup.com/uup/Screen%20Shot%202017-06-09%20at%2009.58.28.png" class="img-responsive" alt="Image1">
              <div class="card-body">
                <h5 class="card-title">Musique</h5>
              </div>
            </div>
                    
            <div class="card text-center" style="width: 20rem">
             <img class="card-img-top" src="http://image.noelshack.com/fichiers/2018/37/5/1536923783-banniere.png" alt="Image2">
              <div class="card-body">
                <h5 class="card-title">Sport</h5>
              </div>
            </div>
                 
            <div class="card text-center" style="width: 20rem">
             <img class="card-img-top" src="http://www.speculativefaith.lorehaven.com/wp-content/uploads/2015/07/Cosplay-Photographers-Best-of-Labor-Day-Weekend-Dragon-Con-2012-Judy-Stevens.jpg" alt="Image3">
              <div class="card-body">
                <h5 class="card-title">Geek</h5>
              </div>
            </div>    
          
            <div class="card text-center" style="width: 20rem">
             <img class="card-img-top" src="http://www.lesraffineurs.com/carnets/wp-content/uploads/2014/04/tumblr_mzprsnl6qk1r6qr6eo1_1280-1-1050x700.jpg" alt="Image4">
              <div class="card-body">
                <h5 class="card-title">Familial</h5>
              </div>
            </div>
            
            </div>
            
		<hr>

		<div class="créer">
			<h1>Comment créer mon événement?</h1><br><br>
		</div>

		<div class="icones">
			<div class="icone1">
				<img src="http://www.learnenjoy.com/wp-content/uploads/2016/06/V7_5-Icone-Calendrier.png"alt="Logo création"><br><br><br>
				<h3>1. Je crée mon<br> événement</h3>
			</div>
			<div class="icone2">
				<img src="https://cdn.icon-icons.com/icons2/510/PNG/512/ios7-people_icon-icons.com_50207.png"alt="logo participants"><br><br><br><h3>
					2. Je fixe mes<br> participants
				</h3>
			</div>
			<div class="icone3"><img src="http://download.seaicons.com/icons/iconsmind/outline/512/Mail-Money-icon.png"
					alt="Logo cagnotte"><br><br><br><h3>3. Je configure<br> ma cagnotte</h3>
			</div>
			<div class="icone4">
				<img src="https://cdn.iconscout.com/icon/free/png-512/checked-box-460353.png"
					alt="Logo valide"><br><br><br><h3>4. Je fixe MON<br> événement</h3>
			</div>
		</div>

		<div id="bouton">
			<br>
			<br>
			<p><a href="#inscription2"><input type="button"	 style="width:130px" value="Je m'inscris"/></a></p>
		</div>
		
		<br><br><br>
		
		<hr>
		
		<div class="créer">
			<h1>Pour participer à un événement?</h1>
			<br>
			<br>
			<div class="icones">
				<div class="icone1">
					<img
						src="https://cdn.icon-icons.com/icons2/510/PNG/512/search_icon-icons.com_50045.png"
						alt="Logo recherche"><br>
					<br>
					<br>
					<h3>
						1. Je cherche<br> par mots-clé
					</h3>
				</div>
				<div class="icone2">
					<img
						src="https://userscontent2.emaze.com/images/e8222ca3-4c4b-4d37-a9a2-9ee6ccfcb52a/96dbfa09bf0ad62a404823c0b5b2daf9.png"
						alt="logo choix"><br>
					<br>
					<br>
					<h3>
						2. Je choisis<br> l'événement
					</h3>
				</div>
				<div class="icone3">
					<img src="https://png.icons8.com/ios/1600/cash-in-hand-filled.png"alt="Logo dons"><br>
					<br><br>
					<h3>3. Je donne<br> si je veux</h3>
				</div>
				<div class="icone4">
					<img src="https://cdn.iconscout.com/icon/free/png-512/checked-box-460353.png"alt="Logo valide"><br>
					<br>
					<br>
					<h3>
						4. Je valide ma<br>participation
					</h3>
				</div>
			</div>
		</div>

		<br>
		<br>

		<div id="bouton">
			<p><a href="#inscription2"><input type="button" style="width:130px" value="Je m'inscris" /></a></p></div>

		<br><br><br>

		<hr>

		<div id="inscription2">
			<h1>Inscription</h1>
			<br>
			<p>Pour rejoindre la communauté Rocket!, il te suffit de
				compléter le formulaire ci-dessous</p>
			<form action="RegisterLet" method="post">
				<fieldset>
					<div class="pseudo">
						<label for="uname"></label> <input type="text" id="uname"
							name="pseudo" required minlength="6" maxlength="100"
							placeholder="Pseudo" /> <span class="validity"></span>
					</div>

					<div class="password">
						<label for="uname"></label> <input type="password" id="uname"
							name="mdp" required minlength="8" maxlength="100"
							placeholder="Mot de passe" /> <span class="validity"></span>
					</div>

					<div class="confirmation">
						<label for="uname"></label> <input type="password" id="uname"
							name="mdp2" required minlength="8" maxlength="100"
							placeholder="Confirme ton mot de passe" /> <span
							class="validity"></span>

					</div>

					<div class="email">
						<label for="uname"></label> <input type="text" id="uname"
							name="email" required minlength="8" maxlength="100"
							placeholder="Email" /> <span class="validity"></span>
					</div>
					<div class="messageErreur">
						<p color=red>${errorPass}</p>
						<br>

					</div>
				</fieldset>

				<input type="submit" value="S'inscrire!">

			</form>
			
			 <p>${errorPseudo}</p>
		</div>

		<div class="fun">
			<h1>Et c'est parti pour le fun!</h1>
		</div>

				<div class="slider">

					<div id="carouselExampleIndicators" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0"
								class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"
								class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="2"
								class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="3"
								class="active"></li>
						</ol>

						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="d-block w-100"
									src="http://image.noelshack.com/fichiers/2018/37/5/1536923783-banniere.png"
									alt="first slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100"
									src="http://mjcloreillecassee.com/home/wp-content/uploads/2017/05/Banniere-Fete-de-la-MJC-site-OKC.jpg"
									alt="second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100"
									src="http://image.noelshack.com/fichiers/2018/37/5/1536923783-banniere.png"
									alt="third slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100"
									src="http://mjcloreillecassee.com/home/wp-content/uploads/2017/05/Banniere-Fete-de-la-MJC-site-OKC.jpg"
									alt="Fourth slide">
							</div>

						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>

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
							<input type="submit" value="Je m'inscris!">
						</p>
					</form>
					<p>${confirmNewsletter} </p>
				</div>
			</div>
			<div class="infos">
				<p>
					Contact | Conditions générales d'utilisation | Qui sommes-nous? <br>
					<br>Rocket! 2018 Tous droits réservés
				</p>
			</div>
		</div>

	</div>
</body>
</html>
