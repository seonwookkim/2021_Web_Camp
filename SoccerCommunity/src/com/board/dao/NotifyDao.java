package com.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.board.bean.Notify;
import com.board.common.JDBCUtil;

public class NotifyDao {
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;

	private final String N_SAVE = "insert into NOTIFY (title, author, content, image) values (?,?,?,?)";
	private final String N_UPDATE = "update NOTIFY set title=?, author=?, content=?, image=? where seq=?";
	private final String N_DELETE = "delete from NOTIFY where seq=?";
	private final String N_VIEW = "select * from NOTIFY where seq=?";
	private final String N_LIST = "select * from NOTIFY order by regdate desc";
	
	public int save(Notify n) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(N_SAVE);
			stmt.setString(1, n.getTitle());
			stmt.setString(2, n.getAuthor());
			stmt.setString(3, n.getContent());
			stmt.setString(4, n.getImage());
			stmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int update(Notify n) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(N_UPDATE);
			stmt.setString(1, n.getTitle());
			stmt.setString(2, n.getAuthor());
			stmt.setString(3, n.getContent());
			stmt.setString(4, n.getImage());
			stmt.setInt(5, n.getSeq());
			stmt.executeUpdate();
			return 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}	
	
	public void delete(int n) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(N_DELETE);
			stmt.setInt(1, n);
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Notify view(int seq) {
		Notify one = new Notify();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(N_VIEW);
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
	
	public List<Notify> list(){
		List<Notify> list = new ArrayList<Notify>();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(N_LIST);
			rs = stmt.executeQuery();
			while(rs.next()) {
				Notify one = new Notify();
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