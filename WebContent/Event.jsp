<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
<title>Nos prochains événements</title>
</head>
<body>

	<jsp:include page="HeaderFile.jsp"></jsp:include>
	<div class="wrapp">



		<div class="titreevenement" name="titre">
			<h1>${event.getTitre()}</h1>
		</div>

		<div class="entete">

			<div class="date">
				<h5 name="date" value="">Date: ${event.getDateEve()}</h5>
			</div>

			<div class="lieu">
				<h5 name="lieu" value="">Ville: ${event.getLieu()}</h5>
			</div>
			
			<div class="heure">
				<h5 name="heureDebut">Heure : ${event.getHeureDebut()}</h5>
			</div>

			<div class="duree">
				<h5>Durée: ${event.getDuree()}</h5>
			</div>

		</div>

		<div class="photoevenement"> <img src=${event.getImage()}></div>

		<div class="description">
			<p>${event.getTextEve()}</p>
		</div>

		<div id="bouton">
			<br> <br>
			<p>
			<input type="button" style="background-color: #ff5c39" style="width: 130px" value="Je m'inscris" />
			<input type="button"  style="background-color: #ff5c39" style="width: 160px" value="Ajouter à mes favoris"/>
			<input type="button"  style="background-color: #ff5c39" style="width: 160px" value="Effacer l'événement"/>
			</p>
		</div>

	</div>

	<jsp:include page="Footer.jsp"></jsp:include>
</body>

</html>