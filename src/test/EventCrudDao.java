package test;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

public class EventCrudDao {
    
    private Connection connection;
    
    public EventCrudDao() {

        connection = LoginBDD.createConnection();

    }
    
    public void addEvent(BeanEvent event) {

        try {

            PreparedStatement preparedStatement = connection
            		
            .prepareStatement("insert into evenement"
                    + "(titre,typeEve, lieu, capaciteMax, montantObjectif, textEve, accesHandicape, urlImage, duree, heureDebut) values (?, ?, ?, ?,"
                    + " ?, ?, ?, ?, ?, ?)");
                        
            preparedStatement.setString(1, event.getTitre());
            //preparedStatement.setDate(2, event.getDateEve());          
            preparedStatement.setString(2, event.getTypeEve());       
            preparedStatement.setString(3, event.getLieu());       
            preparedStatement.setInt(4, event.getCapMax());
            preparedStatement.setDouble(5, event.getMontantObjectif());          
            preparedStatement.setString(6, event.getTextEve());
            preparedStatement.setString(7, event.getAccesHandicap());
            preparedStatement.setString(8, event.getImage());
            preparedStatement.setString(9, event.getDuree());
            preparedStatement.setString(10, event.getHeureDebut());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {

            e.printStackTrace();
        }
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

                    .prepareStatement("UPDATE evenement SET titre=?, dateEve=?, lieuEve=?, capaciteMax=?, montantObjectif=?,"
                            + " typeEve=?, texteEve=?, urlImage=?, accesHandicape=?, duree=?, heureDebut=?, nbreInscrits=?"
                            + "INNER JOIN register ON evenement.idUser = register.idUser WHERE idEvent=?");
 
            preparedStatement.setString(1, event.getTitre());
            //preparedStatement.setDate(2, event.getDateEve());
            preparedStatement.setString(3, event.getLieu());
            preparedStatement.setInt(4, event.getCapMax());
            preparedStatement.setDouble(5, event.getMontantObjectif());
            preparedStatement.setString(6, event.getTypeEve());
            preparedStatement.setString(7, event.getTextEve());
            preparedStatement.setString(8, event.getImage());
            preparedStatement.setString(9, event.getAccesHandicap());
            preparedStatement.setString(10, event.getDuree());
            preparedStatement.setString(11, event.getHeureDebut());
            preparedStatement.setInt(12, event.getNbreInscrits());
            
            preparedStatement.executeUpdate();


        } catch (SQLException e) {
            
            e.printStackTrace();

        }
    }


    public List<BeanEvent> allEvents() {

        List<BeanEvent> events = new ArrayList<BeanEvent>();
        System.out.println("ortogrzoig");

        try {

            Statement statement = connection.createStatement();

            ResultSet rs = statement.executeQuery("SELECT * FROM evenement INNER JOIN register ON evenement.idUser = register.idUser order by dateEve limit 9");

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
                                
                events.add(event);

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

                    prepareStatement("select * from evenement INNER JOIN register ON evenement.idUser = register.idUser where idEve=?");

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
}