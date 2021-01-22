package com.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.board.bean.Board;
import com.board.common.JDBCUtil;

public class BoardDao {
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;

	private final String B_SAVE = "insert into BOARD (title, writer, content, image) values (?,?,?,?)";
	private final String B_UPDATE = "update BOARD set title=?, writer=?, content=?, image=? where seq=?";
	private final String B_DELETE = "delete from BOARD  where seq=?";
	private final String B_VIEW = "select * from BOARD  where seq=?";
	private final String B_LIST = "select * from BOARD order by regdate desc";
	
	public int save(Board b) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(B_SAVE);
			stmt.setString(1, b.getTitle());
			stmt.setString(2, b.getWriter());
			stmt.setString(3, b.getContent());
			stmt.setString(4, b.getImage());
			stmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int update(Board b) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(B_UPDATE);
			stmt.setString(1, b.getTitle());
			stmt.setString(2, b.getWriter());
			stmt.setString(3, b.getContent());
			stmt.setString(4, b.getImage());
			stmt.setInt(5, b.getSeq());
			stmt.executeUpdate();
			return 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}	
	
	public void delete(int b) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(B_DELETE);
			stmt.setInt(1, b);
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Board view(int seq) {
		Board one = new Board();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(B_VIEW);
			stmt.setInt(1, seq);
			rs = stmt.executeQuery();
			if(rs.next()) {
				one.setSeq(rs.getInt("seq"));
				one.setTitle(rs.getString("title"));
				one.setWriter(rs.getString("writer"));
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
	
	public List<Board> list(){
		List<Board> list = new ArrayList<Board>();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(B_LIST);
			rs = stmt.executeQuery();
			while(rs.next()) {
				Board one = new Board();
				one.setSeq(rs.getInt("seq"));
				one.setTitle(rs.getString("title"));
				one.setWriter(rs.getString("writer"));
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
