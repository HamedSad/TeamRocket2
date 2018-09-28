<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<link rel="icon" type="image/png"
	href="http://image.noelshack.com/fichiers/2018/38/5/1537535762-logo.png" />
<title>Nos �v�nements pass�s</title>
</head>

<body>

	<jsp:include page="HeaderFile.jsp"></jsp:include>

	<div class="wrapp">



		<div class="titrelisteevenements">
			<h1>Nos �v�nements pass�s</h1>
		</div>

		<div class="centrageimage">

			<c:forEach items="${events}" var="event">
				<div class="card" style="width: 20rem">
					<h5 class="card-title" name="titre">
						<c:out value="${event.getTitre()}" />

					</h5>
					<img class="card-img-top" src=<c:out value= "${event.getImage()}"/>
						alt="Card image cap">

					<div class="card-body">
						<p class="card-text" name="date">
							<c:out value="${event.getDateEve()}" />
						</p>
						<p class="card-text" name="lieu">
							<c:out value="${event.getLieu()}" />
					<form action="EventLet" method="post">
						<input type="hidden" name="idEventPass" value="${event.getId()}" />
						<p>
							<button type="submit" style="background-color: #ff5c39"
								class="btn" value="">En savoir plus</button>
						</p>
					</form>
						</p>
					</div>
					<div class="card-footer">
						<small class="text-muted">Places restantes : <c:out
								value="${event.getCapMax() - event.getNbreInscrits()}" /></small>
					</div>


				</div>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>