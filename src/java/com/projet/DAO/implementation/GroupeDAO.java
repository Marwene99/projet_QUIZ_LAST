
package com.projet.DAO.implementation;
import java.sql.Connection;
import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import com.projet.DAO.DAO;
import com.projet.classe.Groupe ;
public class GroupeDAO extends DAO<Groupe>{

	public GroupeDAO(Connection c) {
		super(c);
	}

	@Override
	public boolean create(Groupe x) {
		String req = "INSERT INTO ungroupe (`IdGroupe` , `moyenneGroupe` , `noteEtudiant`,`EcartType`,`idUser`,`IdCours`,`Mediane`,`TailleMax`) "+
				"VALUES ('"+x.getIdGroupe()+"','"+x.getMoyenneGroupe()+"','"+x.getNoteEtudiant()+"',"+x.getEcartType()+"',"+x.getIdUser()+"',"+x.getIdCours()+"',"+x.getMedianne()+"'"+x.getTailleMax()+"',";
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

	public Groupe read(int id)
	{		
		return this.readID(""+id);
	}

	public Groupe readID(String id) 
	{
            try 
            {
                Statement stm = cnx.createStatement(); 
                ResultSet r = stm.executeQuery("SELECT * FROM ungroupe WHERE IdGroupe = '"+id+"'");
                if (r.next())

                {
                       Groupe u = new Groupe(r.getString("IdGroupe"),
                                                r.getString("IdUser"),
                                                 r.getString("IdCours"),
                                                 r.getDouble("moyenneGroupe"),
                                                 r.getDouble("noteEtudiant"),
                                                 r.getDouble("EcartType"),
                                                 r.getDouble("Mediane"),
                                                 r.getInt("TailleMax"));
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
	public boolean update(Groupe x) {
		Statement stm = null;
		try 
		{
			String req = "UPDATE ungroupe SET  moyenneGroupe = '"+x.getMoyenneGroupe()+"', noteEtudiant = '"+x.getNoteEtudiant()+"', EcartType = '"+x.getEcartType()+"', Mediane = '"+x.getMedianne()+
							" WHERE IdGroupe = '"+x.getIdGroupe()+"'";		
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

        //ON ne peut pas delete de groupe dans notre projet 
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
	public List<Groupe> findAll() 
	{
		List<Groupe> liste = new LinkedList<Groupe>();
		try 
		{
			Statement stm = cnx.createStatement(); 
			ResultSet r = stm.executeQuery("SELECT * FROM ungroupe");
			while (r.next())
			{
				Groupe c = new Groupe(r.getString("IdGroupe"),
                                                r.getString("IdUser"),
                                                 r.getString("IdCours"),
                                                 r.getDouble("moyenneGroupe"),
                                                 r.getDouble("noteEtudiant"),
                                                 r.getDouble("EcartType"),
                                                 r.getDouble("Mediane"),
                                                 r.getInt("TailleMax"));
                                
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
        
      public List<Groupe> findAllbyIdCours( String idcours) {
        List<Groupe> liste = new LinkedList<Groupe>();
        try{
        Statement stm = cnx.createStatement(); 
	ResultSet r = stm.executeQuery("SELECT * FROM ungroupe where idCours='"+idcours+"'");
        while (r.next())
			{
				Groupe c = new Groupe(r.getString("IdGroupe"),
                                                r.getString("IdUser"),
                                                 r.getString("IdCours"),
                                                 r.getDouble("moyenneGroupe"),
                                                 r.getDouble("noteEtudiant"),
                                                 r.getDouble("EcartType"),
                                                 r.getDouble("Mediane"),
                                                 r.getInt("TailleMax"));
                                
				liste.add(c);
			}
			r.close();
			stm.close();
        }
        catch (SQLException exp) {
            
        }
       return liste ;
      
      }

    @Override
    public boolean delete(Groupe x) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   

   
	}




