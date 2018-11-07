/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modele;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;

/**
 *
 * @author Spard
 */
public class DAO {

	protected final DataSource myDataSource;

	public DAO(DataSource dataSource) {
		this.myDataSource = dataSource;
	}

        public List<Discount_Code> discountCodeList() throws DAOException {
            
            List<Discount_Code> liste = new LinkedList<>();
            
            String sql = "SELECT * FROM DISCOUNT_CODE";
            try ( Connection connection = myDataSource.getConnection(); 
                    Statement stmt = connection.createStatement(); 
                    ResultSet rs = stmt.executeQuery(sql)) 
            {
		while (rs.next()) 
                {
                    Discount_Code d = new Discount_Code(rs.getString("DISCOUNT_CODE"),rs.getFloat("RATE"));
                    liste.add(d);
                }
            } catch (SQLException e) 
            {
		throw new DAOException(e.getMessage());
            }
            
            return liste;            
        }
        
        public int deleteDiscountCode(String code) throws DAOException {

		// Une requête SQL paramétrée
		String sql = "DELETE FROM DISCOUNT_CODE WHERE DISCOUNT_CODE = ?";
		try ( Connection connection = myDataSource.getConnection();
                        PreparedStatement stmt = connection.prepareStatement(sql)) 
                {
                    // Définir la valeur du paramètre
                    stmt.setString(1, code);			
                    return stmt.executeUpdate();

		}  catch (SQLException ex) 
                {
                    Logger.getLogger("DAO").log(Level.SEVERE, null, ex);
                    throw new DAOException(ex.getMessage());
		}
	}
        
        
        public int addDiscountCode(String code, float taux) throws DAOException {

		// Une requête SQL paramétrée
		String sql = "INSERT INTO DISCOUNT_CODE VALUES (?,?)";
		try ( Connection connection = myDataSource.getConnection();
                        PreparedStatement stmt = connection.prepareStatement(sql)) 
                {
                    // Définir la valeur du paramètre
                    stmt.setString(1, code);
                    stmt.setFloat(2, taux);
                    return stmt.executeUpdate();

		}  catch (SQLException ex) 
                {
                    Logger.getLogger("DAO").log(Level.SEVERE, null, ex);
                    throw new DAOException(ex.getMessage());
		}
	}

}

