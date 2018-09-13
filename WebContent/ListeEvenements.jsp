<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.2/semantic.min.css">
            <link rel="stylesheet" href="Style.css">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="print.css" media="print">
            <title>Nos prochains événements</title>
        </head>
        <body>
            <div class="wrapp">
                <header>
                
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
                                <a class="nav-link" href="CreationEvenement.jsp">Créer un événement</a>
                            </li>                            
                        </ul>
                    <form action="RechercheEvenement.jsp" class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Recherche" aria-label="Search"><input type="submit" style="background-color: #ff5c39" class="btn" value="Trouver!"/>
                    </form>
                            <li>
                                <div class="deconnexion"><input type="button" style="background-color: #ff5c39" class="btn" value="Déconnexion"/></div>
                            </li>
                    </div>
                    </nav>
                	
                    <nav class="headlisteevenements">
                    </nav>
                </header> 
                
                <div class="titrelisteevenements">
                    <h1>Nos prochains événements</h1>
                </div>
                
                <div class="listeevenements">
                    
                    <div class="card-deck">
                          <div class="card">
                          	<h5 class="card-title" name="titre">Titre de l'événement 1</h5>
                            <img class="card-img-top" src="Images/logo.png" alt="Card image cap">
                            <div class="card-body">  
                              <p class="card-text" name="date">Date</p>
                              <p class="card-text" name="lieu">Ville</p>
                            </div>
                            <div class="card-footer">
                              <small class="text-muted">Places disponibles </small>
                            </div>
                          </div>
                        
                          <div class="card">
                          <h5 class="card-title">Titre de l'événement 2</h5>
                            <img class="card-img-top" src="Images/logo.png" alt="Card image cap">
                            <div class="card-body">                             
                              <p class="card-text">Date</p>
                              <p class="card-text">Ville</p>
                            </div>
                            <div class="card-footer">
                              <small class="text-muted">Places disponibles</small>
                            </div>
                          </div>                        
                          <div class="card">
                          <h5 class="card-title">Titre de l'événement 3</h5>
                            <img class="card-img-top" src="Images/logo.png" alt="Card image cap">
                            <div class="card-body"> 
                              <p class="card-text">Date</p>
                              <p class="card-text">Ville</p>
                            </div>
                            <div class="card-footer">
                              <small class="text-muted">Places disponibles</small>
                            </div>
                          </div>
                        </div>
                        
                        <div class="card-deck">
                          <div class="card">
                            <h5 class="card-title">Titre de l'événement 4</h5>
                            <img class="card-img-top" src="Images/logo.png" alt="Card image cap">
                            <div class="card-body">
                              <p class="card-text">Date</p>
                              <p class="card-text">Ville</p>
                            </div>
                            <div class="card-footer">
                              <small class="text-muted">Places disponibles</small>
                            </div>
                          </div>
                    
                          <div class="card">
                          <h5 class="card-title">Titre de l'événement 5</h5>
                            <img class="card-img-top" src="Images/logo.png" alt="Card image cap">
                            <div class="card-body">                              
                              <p class="card-text">Date</p>
                              <p class="card-text">Ville</p>
                            </div>
                            <div class="card-footer">
                              <small class="text-muted">Places disponibles </small>
                            </div>
                          </div>
                        
                          <div class="card">
                          <h5 class="card-title">Titre de l'événement 6</h5>
                            <img class="card-img-top" src="Images/logo.png" alt="Card image cap">
                            <div class="card-body">                             
                              <p class="card-text">Date</p>
                              <p class="card-text">Ville</p>
                            </div>
                            <div class="card-footer">
                              <small class="text-muted">Places disponibles</small>
                            </div>
                          </div> 
                        </div>
                    
                        <div class="card-deck">
                          <div class="card">
                          <h5 class="card-title">Titre de l'événement 7</h5>
                            <img class="card-img-top" src="Images/logo.png" alt="Card image cap">
                            <div class="card-body">
                              <p class="card-text">Date</p>
                              <p class="card-text">Ville</p>
                            </div>
                            <div class="card-footer">
                              <small class="text-muted">Places disponibles</small>
                            </div>
                          </div>
                        
                          <div class="card">
                          <h5 class="card-title">Titre de l'événement 8</h5>
                            <img class="card-img-top" src="Images/logo.png" alt="Card image cap">
                            <div class="card-body">
                              <p class="card-text">Date</p>
                              <p class="card-text">Ville</p>
                            </div>
                            <div class="card-footer">
                              <small class="text-muted">Places disponibles</small>
                            </div>
                          </div> 
                          <div class="card">
                           <h5 class="card-title">Titre de l'événement 9</h5>
                            <img class="card-img-top" src="Images/logo.png" alt="Card image cap">
                            <div class="card-body">
                              <p class="card-text">Date</p>
                              <p class="card-text">Ville</p>
                            </div>
                            <div class="card-footer">
                              <small class="text-muted">Places disponibles</small>
                            </div>
                          </div>
                    </div>
                    
                </div>
                    
                <div class="footer">
                 <div class="centragefooter">
                     <div class="liens">
                         <p><strong>Reste connecté sur les réseaux</strong></p><br>
                     <div class="iconesfooter">
                       <h4><a href="https://www.facebook.com" target="_blank"><img src="http://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19761.png" alt="Logo facebook"></a>
                       <a href="https://www.linkedin.com" target="_blank"><img src="https://focussnapeat.com/wp-content/uploads/2016/06/snapcodes.png" alt="logo Snapchat"></a>
                       <a href="https://www.twitter.com" target="_blank"><img src="https://www.unet.cz/blog/wp-content/uploads/2017/11/Twitter_logo00.png" alt="Logo twitter"></a>
                           <a href="https://www.instagram.com" target="-blank"><img src="https://blog.opennemas.com/media/blog/images/2017/11/21/2017112117323379600.png" alt="Logo insta"></a></h4>
                     </div>
                     </div>
                     <div class="newsletter">
                         <form action="NewsletterLet" method="post">
                             <p><strong>Pour t'inscrire à la newsletter</strong></p><br>    
                             <p>Email<input type="text" name="email"></p>
                             <p><input type="submit" value="Je m'inscris!"></p>          
                         </form>
                         <p>${confirmNewsletter}</p>
                     </div>
                 </div>
                 <div class="infos">
                     <p>Contact  | Conditions générales d'utilisation  |  Qui sommes-nous? 
                     <br><br>Rocket! 2018 Tous droits réservés</p>
                 </div>
              
                </div>
            </div>
        </body>
    </html>
        