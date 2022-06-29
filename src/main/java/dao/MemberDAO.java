package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import org.springframework.stereotype.Repository;

import db.DBConnection;
import vo.MemberVO;

@Repository
public class MemberDAO {
	private Connection cn = DBConnection.getConnection();
	   private Statement st;
	   private PreparedStatement pst;
	   private ResultSet rs;
	   private String sql;
	   
   public MemberVO selectMemberOne(MemberVO vo) {
	      sql = "select id, password, nickname, birthday, url from member where id=?";
      try {
         pst = cn.prepareStatement(sql);
         pst.setString(1, vo.getLog_id());
         rs = pst.executeQuery();
         if (rs.next()) {
            vo.setLog_id(rs.getString(1));
            vo.setLog_password(rs.getString(2));
            vo.setNickname(rs.getString(3));
            vo.setBirthday(rs.getInt(4));
            vo.setUrl(rs.getString(5));
         } else {
            vo = null;
         }
      } catch (Exception e) {
         System.out.println("> 로그인 + 회원페이지 Exception : " + e);
         vo = null;
      }
      return vo;
   } // selectMemberOne
}


