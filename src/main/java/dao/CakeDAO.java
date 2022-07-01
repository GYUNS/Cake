package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.stereotype.Repository;

import com.mysql.cj.x.protobuf.MysqlxConnection.Close;

import db.DBConnection;
import vo.CakeVO;
import vo.MemberVO;

@Repository
public class CakeDAO {
	private Connection cn = DBConnection.getConnection();
	   private Statement st;
	   private PreparedStatement pst;
	   private ResultSet rs;
	   private String sql;
	   
	   public int cakeLetterInsert(CakeVO vo) {
		      sql = "insert into cake(c_nickname,title,contents) values(?,?,?)" ;
		      try {
		         pst=cn.prepareStatement(sql);
		   
		         pst.setString(1, vo.getC_nickname());
		         pst.setString(2, vo.getTitle());
		         pst.setString(3, vo.getContents());
		         
		         return pst.executeUpdate();
		      } catch (Exception e) {
		         System.out.println("** Cake insert Exception => "+e.toString());
		         return 0;
		      }
		   } //insert

}