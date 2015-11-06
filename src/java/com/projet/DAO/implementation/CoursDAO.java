
package com.projet.DAO.implementation;
import java.sql.Connection;
import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import com.projet.DAO.DAO;
import com.projet.classe.Cours;

public class CoursDAO extends DAO<Cours>{

	public CoursDAO(Connection c) {
		super(c);
	}

	@Override
	public boolean create(Cours x) {
		String req = "INSERT INTO cours (`idCours` , `idProf` , `idDA`) "+
				"VALUES ('"+x.getIdCours()+"','"+x.getIdProf()+"','"+x.getIdDa()+"')";
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

	public Cours read(int id)
	{		
		return this.readID(""+id);
	}

	public Cours readID(String id) 
	{
            try 
            {
                Statement stm = cnx.createStatement(); 
                ResultSet r = stm.executeQuery("SELECT * FROM cours WHERE id = '"+id+"'");
                if (r.next())
                {
                       Cours u = new Cours(r.getString("idCours"),
                                                 r.getString("idProf"),
                                                 r.getString("idDa"));
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
	public boolean update(Cours x) {
		Statement stm = null;
		try 
		{
			String req = "UPDATE question SET  idProf = '"+x.getIdProf()+"', idDa = '"+x.getIdDa() +
							" WHERE idCours = '"+x.getIdCours()+"'";		
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
	public List<Cours> findAll() 
	{
		List<Cours> liste = new LinkedList<Cours>();
		try 
		{
			Statement stm = cnx.createStatement(); 
			ResultSet r = stm.executeQuery("SELECT * FROM cours");
			while (r.next())
			{
				Cours c = new Cours(r.getString("idCours"),
						r.getString("idProf"),
                                                r.getString("idDa"));
                                
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
    public boolean delete(Cours x) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   

   
	}



