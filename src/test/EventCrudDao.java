package test;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;

public class EventCrudDao {
    
    private Connection connection;
    
    public EventCrudDao() {

        connection = LoginBDD.createConnection();

    }
    
    public int addEvent(BeanEvent event) {

    	int idEvent = -1;
    	
        try {

            PreparedStatement preparedStatement = connection
            		
            .prepareStatement("insert into evenement"
                    + "(titre,dateEve,typeEve, lieu, capaciteMax, montantObjectif, textEve, accesHandicape, urlImage, duree, heureDebut, idUser)  values (?, ?, ?, ?,"
                    + " ?, ?, ?, ?, ?, ?, ?, ?)", PreparedStatement.RETURN_GENERATED_KEYS);
                             
            preparedStatement.setString(1, event.getTitre());
            preparedStatement.setDate(2, (java.sql.Date) event.getDateEve());          
            preparedStatement.setString(3, event.getTypeEve());       
            preparedStatement.setString(4, event.getLieu());       
            preparedStatement.setInt(5, event.getCapMax());
            preparedStatement.setDouble(6, event.getMontantObjectif());          
            preparedStatement.setString(7, event.getTextEve());
            preparedStatement.setString(8, event.getAccesHandicap());
            preparedStatement.setString(9, event.getImage());
            preparedStatement.setString(10, event.getDuree());
            preparedStatement.setString(11, event.getHeureDebut());
            preparedStatement.setInt(12, event.getIdUser());
            
            preparedStatement.executeUpdate();
            
            ResultSet rs = preparedStatement.getGeneratedKeys();
            
            if(rs.next()) {
            	idEvent = rs.getInt(1); 
            }
            
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return idEvent;
    }


    public void deleteEvent(int eventId) {

        try {

            PreparedStatement preparedStatement = connection

                    .prepareStatement("delete from evenement where idEvent=?");

            // Parameters start with 1

            preparedStatement.setInt(1, eventId);
            preparedStatement.executeUpdate();



        } catch (SQLException e) {

            e.printStackTrace();
        }

    }

    public void updateEvent(BeanEvent event) {

        try {

            PreparedStatement preparedStatement = connection

                    .prepareStatement("UPDATE evenement SET titre=?, dateEve=?, lieu=?, capaciteMax=?, montantObjectif=?,"
                            + " typeEve=?, textEve=?, urlImage=?, accesHandicape=?, duree=?, heureDebut=?"
                            + "WHERE idEvent=?");
 
            preparedStatement.setString(1, event.getTitre());
            preparedStatement.setDate(2, (java.sql.Date) event.getDateEve());
            preparedStatement.setString(3, event.getLieu());
            preparedStatement.setInt(4, event.getCapMax());
            preparedStatement.setDouble(5, event.getMontantObjectif());
            preparedStatement.setString(6, event.getTypeEve());
            preparedStatement.setString(7, event.getTextEve());
            preparedStatement.setString(8, event.getImage());
            preparedStatement.setString(9, event.getAccesHandicap());
            preparedStatement.setString(10, event.getDuree());
            preparedStatement.setString(11, event.getHeureDebut());
            preparedStatement.setInt(12, event.getId());
            
            preparedStatement.executeUpdate();


        } catch (SQLException e) {
            
            e.printStackTrace();

        }
    }


    public List<BeanEvent> allEvents() {

        List<BeanEvent> events = new ArrayList<BeanEvent>();
        System.out.println("récuperation des données");

        try {

            Statement statement = connection.createStatement();

            ResultSet rs = statement.executeQuery("SELECT * FROM evenement INNER JOIN register ON evenement.idUser = register.idUser where dateEve >= CURDATE() order by dateEve");

            while (rs.next()) {

                
                BeanEvent event = new BeanEvent();
//
                event.setId(rs.getInt("idEvent"));
                event.setTitre(rs.getString("titre"));
                event.setLieu(rs.getString("lieu"));
                event.setDateEve(rs.getDate("dateEve"));
                event.setCapMax(rs.getInt("capaciteMax"));
                event.setNbreInscrits(rs.getInt("nbreInscrits"));
                event.setMontantObjectif(rs.getDouble("montantObjectif"));
                event.setMontantActuel(rs.getDouble("montantActuel"));
                event.setTypeEve(rs.getString("typeEve"));
                event.setTextEve(rs.getString("textEve"));
                event.setImage(rs.getString("urlImage"));
                event.setDuree(rs.getString("duree"));
                event.setHeureDebut(rs.getString("heureDebut"));
                event.setAccesHandicap(rs.getString("accesHandicape"));
                event.setIdUser(rs.getInt("idUser"));
                event.setCreateur(rs.getString("pseudo"));
                                
                events.add(event);
                
                System.out.println("données récupérées");
            }

        } catch (SQLException e) {

            e.printStackTrace();
        }

        return events;
    } 


    public BeanEvent getEventById(int eventId) {

        BeanEvent event = new BeanEvent();

        try {

            PreparedStatement preparedStatement = connection.

                    prepareStatement("select * from evenement INNER JOIN register ON evenement.idUser = register.idUser where idEvent=?");

            preparedStatement.setInt(1, eventId);

            ResultSet rs = preparedStatement.executeQuery();


             if (rs.next()) {

                event.setId(rs.getInt("idEvent"));
                event.setTitre(rs.getString("titre"));
                event.setLieu(rs.getString("lieu"));
                event.setDateEve(rs.getDate("dateEve"));
                event.setCapMax(rs.getInt("capaciteMax"));
                event.setNbreInscrits(rs.getInt("nbreInscrits"));
                event.setMontantObjectif(rs.getDouble("montantObjectif"));
                event.setMontantActuel(rs.getDouble("montantActuel"));
                event.setTypeEve(rs.getString("typeEve"));
                event.setTextEve(rs.getString("textEve"));
                event.setImage(rs.getString("urlImage"));
                event.setDuree(rs.getString("duree"));
                event.setHeureDebut(rs.getString("heureDebut"));
                event.setAccesHandicap(rs.getString("accesHandicape"));
                
            }

        } catch (SQLException e) {

            e.printStackTrace();
        }

        return event;
    }   
    
    
    public List<BeanEvent> allPastEvents() {

        List<BeanEvent> pastEvents = new ArrayList<BeanEvent>();
        System.out.println("récuperation des données");

        try {

            Statement statement = connection.createStatement();

            ResultSet rs = statement.executeQuery("SELECT * FROM evenement INNER JOIN register ON evenement.idUser = register.idUser where dateEve < CURDATE() order by dateEve");

            while (rs.next()) {

                
                BeanEvent passedEvent = new BeanEvent();

                passedEvent.setId(rs.getInt("idEvent"));
                passedEvent.setTitre(rs.getString("titre"));
                passedEvent.setLieu(rs.getString("lieu"));
                passedEvent.setDateEve(rs.getDate("dateEve"));
                passedEvent.setCapMax(rs.getInt("capaciteMax"));
                passedEvent.setNbreInscrits(rs.getInt("nbreInscrits"));
                passedEvent.setMontantObjectif(rs.getDouble("montantObjectif"));
                passedEvent.setMontantActuel(rs.getDouble("montantActuel"));
                passedEvent.setTypeEve(rs.getString("typeEve"));
                passedEvent.setTextEve(rs.getString("textEve"));
                passedEvent.setImage(rs.getString("urlImage"));
                passedEvent.setDuree(rs.getString("duree"));
                passedEvent.setHeureDebut(rs.getString("heureDebut"));
                passedEvent.setAccesHandicap(rs.getString("accesHandicape"));
                passedEvent.setIdUser(rs.getInt("idUser"));
                passedEvent.setCreateur(rs.getString("pseudo"));
                                
                pastEvents.add(passedEvent);
                
                System.out.println("données récupérées past");
            }

        } catch (SQLException e) {

            e.printStackTrace();
        }

        return pastEvents;
    }
    
   
    public BeanEvent profil (int IdUser) {

        BeanUser affichageProfil = new BeanUser();

        try {

            PreparedStatement preparedStatement = connection.

                    prepareStatement("SELECT * FROM register WHERE idUser=?");

            preparedStatement.setInt(1, IdUser);

            ResultSet rs = preparedStatement.executeQuery();


             if (rs.next()) {

                affichageProfil.setIdUser(rs.getInt("idUser"));
                affichageProfil.setPseudo(rs.getString("pseudo"));
                affichageProfil.setEmail(rs.getString("email"));
                            
            }

        } catch (SQLException e) {

            e.printStackTrace();
        }
        
		return null;
		}   
    
}

