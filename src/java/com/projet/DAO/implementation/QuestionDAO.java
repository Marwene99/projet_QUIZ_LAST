
package com.projet.DAO.implementation;
import java.sql.Connection;
import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import com.projet.DAO.DAO;
import com.projet.classe.Question ;
public class QuestionDAO extends DAO<Question>{

	public QuestionDAO(Connection c) {
		super(c);
	}

	@Override
	public boolean create(Question x) {

		String req = "INSERT INTO question (`Question`,`Reponse`) "+

				"VALUES ('"+x.getTxtQuestion()+"','"+x.getReponse()+"')";
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

	public Question read(int id)
	{		
		return this.readID(""+id);
	}

	public Question readID(String id) 
	{
            try 
            {
                Statement stm = cnx.createStatement(); 
                ResultSet r = stm.executeQuery("SELECT * FROM question WHERE id = '"+id+"'");
                if (r.next())
                {
                       Question u = new Question(r.getString("idQuestion"),
                                                 r.getString("texteQuestion"),
                                                 r.getString("reponse"));
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
	public boolean update(Question x) {
		Statement stm = null;
		try 
		{
			String req = "UPDATE question SET  Question = '"+x.getTxtQuestion()+"', Reponse = '"+x.getReponse() +
							" WHERE idQuestion = '"+x.getIdQuestion()+"'";		
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
	public List<Question> findAll() 
	{
		List<Question> liste = new LinkedList<Question>();
		try 
		{
			Statement stm = cnx.createStatement(); 
			ResultSet r = stm.executeQuery("SELECT * FROM question");
			while (r.next())
			{
				Question c = new Question(r.getString("idQuestion"),
						r.getString("Question"),
                                                r.getString("Reponse"));
                                
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
        public Question findQuestionbyId ( String Id) {
         Question c =new Question();
           
         try 
		{
			Statement stm = cnx.createStatement(); 
			ResultSet r = stm.executeQuery("SELECT * FROM question where IdQuestion="+Id);
			if (r != null)
			{
				c.setIdQuestion(r.getString("idQuestion"));
                                c.setTxtQuestion(r.getString("Question"));
                                c.setReponse(r.getString("Reponse"));
                                
				
			}
			r.close();
			stm.close();
		}
		catch (SQLException exp)
		{
		}
		return c;
		}
         



    @Override
    public boolean delete(Question x) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   

   
	}




