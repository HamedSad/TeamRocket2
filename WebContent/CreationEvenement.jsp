<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
            <link rel="icon" type="image/png" href="http://image.noelshack.com/fichiers/2018/38/5/1537535762-logo.png" />
            <title>Ev�nement</title>
        </head>
          <body>
          
           	<jsp:include page="HeaderFile.jsp"></jsp:include>
          
            <div class="wrapp">
                

              
            <div class="titrecreation">    
                <h1>Cr�ation d'un �v�nement</h1>
            </div>
                 <h1>${ConfirmationCreationEvent}</h1>                
            <div class="creationformulaire">
                
                <div class="formulaire">
                <form action="CreationEventsLet" method = "post">
                	<table>
                       <div class="titre">
                            <input type="text" required id="uname" name="titre" style="width: 340px"
                            placeholder="Titre"/><br><br>
                        </div>
                        
                        <select name="typeEve" required placeholder="type event" style="width: 340px">
                        	<option value="" disabled selected>Selectionne le type</option>
            				<option value="Musique">Musique</option>
            				<option value="Meet up">Meet up</option>
            				<option value="Hackathon">Hackathon</option>
            				<option value="Atelier coworking">Atelier coworking</option>
            				<option value="Sport">Sport</option>
        				</select> <br>
                    
                       <br><div class="date">
                            <input type="date" id="uname" name="date" style="width: 340px"
                            placeholder="Date"/><br><br>
                        </div> 
                        
                        <div class="heureDebut">
                            <input type="text" required id="uname" name="heureDebut" style="width: 340px" placeholder="Heure de d�but"/><br><br>
                        </div>
                        
                    
                       <div class="lieu">
                            <input type="text" required id="uname" name="lieu" style="width: 340px" placeholder="Lieu"/><br><br>
                        </div>
                        
                        <div class="Duree">
                            <input type="text" required id="uname" name="duree" style="width: 340px" placeholder="Dur�e approximative"/><br><br>
                        </div>                        
                        
                        <div class="nombreparticipants">
                            <input type="text" required id="uname" name="capacite" style="width: 340px" placeholder="Nombre de participants"/><br><br>
                        </div>
                        
                        <div class="montant">
                            <input type="text" required id="uname" name="montant" style="width: 340px" placeholder="Montant souhait�"/><br><br>
                        </div>
                        
                        <div class="textEve">
                            <textarea name="textEve" required cols="42" rows="10"  placehoder = "Description"></textarea><br><br>
                        </div>
                        
                        <div class="accesHandicape" required>
                            <label for="uname"><h5>As tu besoin d'un acc�s handicap� ?
                            <input type="radio" id="uname" name="accesHandicape" value="oui"/>Oui
                            <input type="radio" id="uname" name="accesHandicape" value="non"/>Non</h5><br>
							</label>
                        </div>
                                              
                        <div class="image">
                            <input type="file" id="uname" name="urlImage" style="width: 340px" placeholder="Url de l'image"/><br><br>
                    	</div>
                    	
                    	<input type="submit" style="background-color: #ff5c39" class="btn" value="Cr�er"/>
                    	
                    </table>
                </form>
                </div>
                
                <div class="illustration">
                    <img src="" alt="Card image">
                </div>   
            </div>      
            
          </div>
         <jsp:include page="Footer.jsp"></jsp:include>   
        </body>
        
    </html>