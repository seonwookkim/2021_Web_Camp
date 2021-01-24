package com.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.board.bean.Communityin;
import com.board.common.JDBCUtil;

public class CommunityinDao {
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;

	private final String C_SAVE = "insert into COMIN (title, author, content, image) values (?,?,?,?)";
	private final String C_UPDATE = "update COMIN set title=?, author=?, content=?, image=? where seq=?";
	private final String C_DELETE = "delete from COMIN where seq=?";
	private final String C_VIEW = "select * from COMIN where seq=?";
	private final String C_LIST = "select * from COMIN order by regdate desc";
	
	public int save(Communityin c) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(C_SAVE);
			stmt.setString(1, c.getTitle());
			stmt.setString(2, c.getAuthor());
			stmt.setString(3, c.getContent());
			stmt.setString(4, c.getImage());
			stmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int update(Communityin c) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(C_UPDATE);
			stmt.setString(1, c.getTitle());
			stmt.setString(2, c.getAuthor());
			stmt.setString(3, c.getContent());
			stmt.setString(4, c.getImage());
			stmt.setInt(5, c.getSeq());
			stmt.executeUpdate();
			return 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}	
	
	public void delete(int c) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(C_DELETE);
			stmt.setInt(1, c);
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Communityin view(int seq) {
		Communityin one = new Communityin();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(C_VIEW);
			stmt.setInt(1, seq);
			rs = stmt.executeQuery();
			if(rs.next()) {
				one.setSeq(rs.getInt("seq"));
				one.setTitle(rs.getString("title"));
				one.setAuthor(rs.getString("author"));
				one.setContent(rs.getString("content"));
				one.setImage(rs.getString("image"));
				one.setRegdate(rs.getDate("regdate"));
				one.setCnt(rs.getInt("cnt"));
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return one;
	}
	
	public List<Communityin> list(){
		List<Communityin> list = new ArrayList<Communityin>();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(C_LIST);
			rs = stmt.executeQuery();
			while(rs.next()) {
				Communityin one = new Communityin();
				one.setSeq(rs.getInt("seq"));
				one.setTitle(rs.getString("title"));
				one.setAuthor(rs.getString("author"));
				one.setContent(rs.getString("content"));
				one.setImage(rs.getString("image"));
				one.setRegdate(rs.getDate("regdate"));
				one.setCnt(rs.getInt("cnt"));
				list.add(one);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return list;
	}
}
