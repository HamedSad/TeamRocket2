<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Profil</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="Style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="HeaderFile.jsp"></jsp:include>
	<div class="container-fluid bg-3 text-center">
		<div class="row">
			<div class="col-sm-3">

				<form class="text-center">
					<div class="form-group">

						<input name ="pseudo" type="nom" class="form-control"
							id="exampleFormControlInput1" placeholder="">${profil.getPseudo()}
					</div>
					<div class="form-group">

						<input type="prenom" class="form-control"
							id="exampleFormControlInput1" placeholder="Prenom">
					</div>
					<div class="form-group">

						<input type="age" class="form-control"
							id="exampleFormControlInput1" placeholder="age">
					</div>
					<div class="form-group">

						<input type="email" class="form-control"
							id="exampleFormControlInput1" placeholder="name@example.com">
					</div>
					<div class="form-group">

						<input type="ville" class="form-control"
							id="exampleFormControlInput1" placeholder="ville">
					</div>


				</form>
				<div class="checkbox">
					<label><input type="checkbox" value=""> Je souhaite
						bénéficier d'un accès handicapé</label>
				</div>
				<br> <br>


				<p>Mes centres d'intérêt...</p>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" name="MeetUp"
						id="inlineCheckbox1" value="oui" checked> <label
						class="form-check-label" for="inlineCheckbox1"><img
						src="https://cdn3.iconfinder.com/data/icons/business-vol-24/100/Artboard_18-512.png"
						width=35px></label> <input class="form-check-input" type="checkbox"
						name="AtelierCoworking" id="inlineCheckbox2" value="oui" checked>
					<label class="form-check-label" for="inlineCheckbox2"><img
						src="https://cdn3.iconfinder.com/data/icons/business-vol-22/100/Artboard_10-512.png"
						width=35px></label> <input class="form-check-input" type="checkbox"
						name="Hackathon" id="inlineCheckbox3" value="oui" checked>
					<label class="form-check-label" for="inlineCheckbox3"><img
						src="https://cdn1.iconfinder.com/data/icons/mentor-guidance-and-coach-for-business-executives/364/mentor-guidance-009-512.png"
						width=35px></label> <input class="form-check-input" type="checkbox"
						name="Musique" id="inlineCheckbox2" value="oui" checked> <label
						class="form-check-label" for="inlineCheckbox2"><img
						src="https://cdn0.iconfinder.com/data/icons/huge-business-icons/512/Music_notes.png"
						width=35px></label> <input class="form-check-input" type="checkbox"
						name="Sport" id="inlineCheckbox3" value="oui" checked> <label
						class="form-check-label" for="inlineCheckbox3"><img
						src="https://cdn3.iconfinder.com/data/icons/basketball-icons/359/Person_Dribbling_A_Basketball-512.png"
						width=35px></label>


				</div>
				<div class="form-group">

					<button type="submit" class="btn btn-primary">Submit</button>
				</div>

			</div>
			<div class="col-sm-3">
				<div class="text-center">
					<h3>Ma photo de profil</h3>
					<img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"
						class="avatar img-circle img-thumbnail" alt="avatar">
					<h6>Upload a different photo...</h6>
					<input type="file" class="text-center center-block file-upload">
				</div>
				</hr>
				<br>
				<!-- Default textarea -->
				<div class="form-group">
					<label for="comment">Tape ta biographie ici!</label>
					<textarea class="form-control" rows="5" id="comment"></textarea>

				</div>
		
			<form action="" method="">
				<input type="submit" style="background-color: white" class="btn"
					value="Supprimer mon profil" />
			</form>
			
			</div>
		</div>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
