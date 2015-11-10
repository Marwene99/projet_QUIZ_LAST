
package com.projet.DAO.implementation;
import java.sql.Connection;
import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import com.projet.DAO.DAO;
import com.projet.classe.User;
import java.sql.PreparedStatement;

public class UserDAO extends DAO<User>{

	public UserDAO(Connection c) {
		super(c);
	}

	@Override
	public boolean create(User x) {
		String req = "INSERT INTO user (`idUser` , `motDePasse` , `etat`) "+
				"VALUES ('"+x.getIdUser()+"','"+x.getMotDePasse()+"','"+x.getEtat()+"')";
		Statement stm = null;
		try 
		{
			stm = cnx.createStatement(); 
			int n= stm.executeUpdate(req);
			if (n>0)
			{
				stm.close();
				return true;
			}
		}
		catch (SQLException exp)
		{
		}
		finally
		{
			if (stm!=null)
			try {
				stm.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
		}
		return false;
	}

	public User read(int id)
	{		
		return this.readID(""+id);
	}
        
        public User read(String id) {
        PreparedStatement stm = null;
        try {
//            Statement stm = cnx.createStatement();
//            ResultSet r = stm.executeQuery("SELECT * FROM user WHERE numId = '" + id + "'");
            //Avec requête paramétrée :
            stm = cnx.prepareStatement("SELECT * FROM user WHERE idUser = ?");
            stm.setString(1,id);
            ResultSet r = stm.executeQuery();
            if (r.next()) {
                //User c = new User(r.getString("numId"),r.getString("mdp"));
                User c = new User();
                c.setIdUser(r.getString("idUser"));
                c.setMotDePasse(r.getString("motDePasse"));
                c.setEtat(r.getString("etat"));
               // c.setNom(r.getString("prenom"));
               // c.setNom(r.getString("nom"));
                r.close();
                stm.close();
                return c;
            }
        } catch (SQLException exp) {
        } finally {
            if (stm != null) {
                try {
                    stm.close();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

	public User readID(String id) 
	{
            try 
            {
                Statement stm = cnx.createStatement(); 
                ResultSet r = stm.executeQuery("SELECT * FROM user WHERE id = '"+id+"'");
                if (r.next())
                {
                       User u = new User(r.getString("idUser"));
                        r.close();
                        stm.close();
                        return u;
                }
            }
            catch (SQLException exp)
            {
            }
            return null;
	}
        

	@Override
	public boolean update(User x) {
		Statement stm = null;
		try 
		{
			String req = "UPDATE user SET id = '"+x.getNom()+"', motDePasse = '"+x.getMotDePasse()+"', prenom = '"+x.getPrenom()+"'" +
							" WHERE idUser = '"+x.getIdUser()+"'";		
			stm = cnx.createStatement(); 
			int n= stm.executeUpdate(req);
			if (n>0)
			{
				stm.close();
				return true;
			}
		}
		catch (SQLException exp)
		{
		}
		finally
		{
			if (stm!=null)
			try {
				stm.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
		}
		return false;
	}

        //ON ne peut pas delete de user dans notre projet 
/*        
	@Override
	public boolean delete(Membre x) 
	{
		{Statement stm = null;
		try 
		{
			stm = cnx.createStatement(); 
			int n= stm.executeUpdate("DELETE FROM catalogue WHERE numero='"+x.getNumero()+"'");
			if (n>0)
			{
				stm.close();
				return true;
			}
		}
		catch (SQLException exp)
		{
		}
		finally
		{
			if (stm!=null)
			try {
				stm.close();
			} catch (SQLException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
		}
		return false;
	}
}*/

	@Override
	public List<User> findAll() 
	{
		List<User> liste = new LinkedList<User>();
		try 
		{
			Statement stm = cnx.createStatement(); 
			ResultSet r = stm.executeQuery("SELECT * FROM user");
			while (r.next())
			{
				User c = new User(r.getString("idUser"),
						r.getString("motDePasse"),
                                                r.getString("etat"));
						//r.getString("prenom"));
                                
				liste.add(c);
			}
			r.close();
			stm.close();
		}
		catch (SQLException exp)
		{
		}
		return liste;
		}



    @Override
    public boolean delete(User x) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   

   
	}


