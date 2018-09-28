<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css" href="inscri.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<title>Team Rocket</title>
</head>

<jsp:include page="HeaderFile.jsp"></jsp:include>

<body id="body">
	<div class="title">
		<p>Vous souhaitez participer à cet évenement ? Remplissez ce
			formulaire dès maintenant !</p>
	</div>

	<!-- Début formulaire -->
	<!-- Colonne de droite 
	<div class="right">
		<form>
			<div class="form-group3">
				<label for="exampleFormControlFile1">Choisissez la photo de
					l'évenement !</label> <input type="file" class="form-control-file"
					id="exampleFormControlFile1">
			</div>
		</form>
	</div> -->

	<form action="InscriEventLet" method="post">
		<div class="form-group">
			<input type="text" class="form-control" name="prenom" id="firstname"
				aria-describedby="InputFirstName" placeholder="Entrer votre prénom">
		</div>

		<div class="form-group">
			<input type="text" class="form-control" name="nom" id="name"
				aria-describedby="name" placeholder="Entrer votre nom">
		</div>

		<div class="form-group2">
			<select class="form-control" name="places" id="FormControlSelect1">
				<option>1</option>
				<option>2</option>
				<option>3</option>
			</select>
		</div>

		<div class="form-group">
			<input type="text" class="form-control" name="email" id="email"
				aria-describedby="email" placeholder="Entrer votre adresse mail">
		</div>

		<div class="form-group">
			<input type="text" class="form-control" name="telephone" id="tel"
				aria-describedby="tel" placeholder="Entrer votre téléphone">
		</div>

		<div class="form-group form-check">
			<input type="checkbox" class="form-check-input" name="handi"
				id="exampleCheck1" checked value="oui"> <label
				class="form-check-label" for="exampleCheck1">Je souhaite
				bénéficier d'un accès handicapé</label>
		</div>

		<div class="button">
			<input type="hidden" name="idEvent" value="${event.getId()}">
			<button type="submit" style="background-color: #fff" class="btn"
				value="">Envoyer</button>
		</div>

	<jsp:include page="Footer.jsp"></jsp:include>
	</form>

</body>
</html>
