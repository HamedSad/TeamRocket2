<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inscription Evenement</title>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->

    <link rel="stylesheet" type="text/css" href="Style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title>Team Rocket</title>

  </head>

  <body id="body">

    <!-- Début Navbar -->

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <a class="navbar-brand" href="#">Rocket!    |   Créateur d'événements</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="#">Profil</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="EvenementsAffichage.jsp">Nos événements</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="CreationEvenement.jsp">Création d'événement</a>
                            </li>
                        </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Recherche" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit" href="rechercheEvenement.jsp">Trouvez!</button>
                    </form>
                            <li>
                                <div class="deconnexion"><input type="button" style="background-color: #FAEBDA" class="btn" value="Déconnexion"/></div>
                            </li>
                    </div>
                    </nav>

<!-- Fin de la navbar -->

<!-- Début body formulaire -->

<div class="title">
<p> Vous souhaitez participer à cet évenement ? Remplissez ce formulaire dès maintenant ! </p>
</div>

<!-- Début formulaire -->

<!-- Colonne de droite -->

<div class="right">
<form>
  <div class="form-group3">
    <label for="exampleFormControlFile1">Choisissez la photo de l'évenement !</label>
    <input type="file" class="form-control-file" id="exampleFormControlFile1">
  </div>
</form>
</div>

<!-- Fin colonne de droite -->

<form>
  <div class="form-group">
    <input type="name" class="form-control" id="firstname" aria-describedby="InputFirstName" placeholder="Entrer votre prénom">
  </div>
  <div class="form-group">
    <input type="name" class="form-control" id="name" aria-describedby="name" placeholder="Entrer votre nom">
  </div>
  <div class="form-group2">
    <select class="form-control" id="FormControlSelect1">
      <option>1</option>
      <option>2</option>
      <option>3</option>
    </select>
  </div>
  <div class="form-group">
    <input type="email" class="form-control" id="email" aria-describedby="email" placeholder="Entrer votre adresse mail">
  </div>
  <div class="form-group">
    <input type="phone" class="form-control" id="tel" aria-describedby="tel" placeholder="Entrer votre téléphone">
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Je souhaite bénéficier d'un accès handicapé</label>
  </div>
  <div class="button">
    <input type="button" style="background-color: #fff" class="btn" value="Envoyer"/></div>
</div>
</form>

<!-- Début footer -->

<div class="footer">
                 <div class="centragefooter">
                     <div class="liens">
                         <p><strong>Reste connecté sur les réseaux</strong></p><br>
                     <div class="iconesfooter">
                       <h4><a href="https://www.facebook.com/" target="_blank"><img src="http://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19761.png" alt="Logo facebook"></a>
                       <a href="https://www.snapchat.com/" target="_blank"><img src="https://focussnapeat.com/wp-content/uploads/2016/06/snapcodes.png" alt="logo Snapchat"></a>
                       <a href="https://www.twitter.com/" target="_blank"><img src="https://www.unet.cz/blog/wp-content/uploads/2017/11/Twitter_logo00.png" alt="Logo twitter"></a>
                           <a href="https://www.instagram.com/" target="-blank"><img src="https://blog.opennemas.com/media/blog/images/2017/11/21/2017112117323379600.png" alt="Logo insta"></a></h4>
                     </div>
                     </div>
                     <div class="newsletter">
                         <form action="Newsletter.jsp">
                             <p><strong>Pour t'inscrire à la newsletter</strong></p><br>
                             <p>Email<input type="text" name="email"></p>
                             <p><input type="submit" value="Je m'inscris!"></p>
                         </form>
                     </div>
                 </div>
                 <div class="infos">
                     <p>Contact  | Conditions générales d'utilisation  |  Qui sommes-nous? 
                     <br><br>Rocket! 2018 Tous droits réservés</p>
                 </div>

                </div>

<!-- Fin footer -->

  </body>
</html>