<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<header> <nav
		class="navbar navbar-expand-lg navbar-light bg-light"> <a
		class="navbar-brand" href="#">Rocket! | ${pseudo} ${idUser}</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">

			<form action="ProfilLet" method="get">
				<input type="submit" style="background-color: white" class="btn"
					value="Profil" />
			</form>


			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				style="color: black" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">Evénements</a>

				<div class="dropdown-menu" aria-labelledby="navbarDropdown">

					<form action="AffichageEventsLet" method="post">
						<input type="submit" style="background-color: white" class="btn"
							value="Evénements à venir" />
					</form>

					<form action="AffichagePastEventsLet" method="post">
						<input type="submit" style="background-color: white" class="btn"
							value="Evénements passés" />
					</form>

					<form action="" method="">
						<input type="submit" style="background-color: white" class="btn"
							value="Mes inscriptions aux événements" />
					</form></li>

			<li class="nav-item"><a class="nav-link"
				href="CreationEvenement.jsp" style="color: black">Créer un
					événement</a></li>

			<form action="" method="">
				<input type="submit" style="background-color: white" class="btn"
					value="Mes favoris" />
			</form>

		</ul>
		<form action="RechercheLet" method="post"
			class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search" name="rechercher"
				value="" placeholder="Recherche" aria-label="Search"><input
				type="submit" style="background-color: #ff5c39" class="btn"
				value="Trouver!" />
		</form>
		<li>
			<div class="deconnexion">
				<input type="button" style="background-color: #ff5c39" class="btn"
					value="Déconnexion" />
			</div>
		</li>
	</div>
	</nav> </header>


</body>
</html>