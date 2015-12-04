
package com.projet.DAO.implementation;
import java.sql.Connection;
import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import com.projet.DAO.DAO;
import com.projet.classe.Quiz ;
public class QuizDAO extends DAO<Quiz>{

	public QuizDAO(Connection c) {
		super(c);
	}

   

	@Override
	public boolean create(Quiz x) {
		String req = "INSERT INTO quizz (`IdQuizz` , `idQuestion` , `IdUser,IdCours,nombreEssais,nombreFautes`) "+
				"VALUES ('"+x.getId()+"','"+x.getIdQuestion()+"','"+x.getIdUser()+"',"+x.getIdCours()+",'"+x.getNbEssais()+"',"+x.getNbFautes()+"')";
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

	public Quiz read(int id)
	{		
		return this.readID(""+id);
	}

	public Quiz readID(String id) 
	{
            try 
            {
                Statement stm = cnx.createStatement(); 
                ResultSet r = stm.executeQuery("SELECT * FROM quizz WHERE IdQuizz = '"+id+"'");
                if (r.next())
                {
                       Quiz u = new Quiz(r.getString("IdQuizz"),
                                                 r.getString("idQuestion"),
                                                 r.getString("IdUser"),
                                                 r.getString("IdCours"),
                                                 r.getInt("nombreEssais"),
                                                 r.getInt("nombreFautes"));
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
	public boolean update(Quiz x) {
		Statement stm = null;
		try 
		{
			String req = "UPDATE quizz SET  nombreEssais = '"+x.getNbEssais()+"', nombreFautes = '"+x.getNbFautes() +
							" WHERE IdQuizz = '"+x.getId()+"'";		
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
	public List<Quiz> findAll() 
	{
		List<Quiz> liste = new LinkedList<Quiz>();
		try 
		{
			Statement stm = cnx.createStatement(); 
			ResultSet r = stm.executeQuery("SELECT * FROM quizz");
			while (r.next())
			{
				Quiz c = new Quiz(r.getString("IdQuizz"),
                                                 r.getString("idQuestion"),
                                                 r.getString("IdUser"),
                                                 r.getString("IdCours"),
                                                 r.getInt("nombreEssais"),
                                                 r.getInt("nombreFautes"));
                                
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
    public boolean delete(Quiz x) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   

   
	}




