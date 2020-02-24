package com.playingeleven.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.playingeleven.DbConnection;
import com.playingeleven.DbException;
import com.playingeleven.dao.TeamDAO;
import com.playingeleven.model.Team;

import logger.Logger;

public class TeamDAOImpl implements TeamDAO {
	private static final Logger log=Logger.getInstance(); 
	public void addTeam(String teamName,String teamOwner,String teamCoach,int amountRemaining) throws DbException {
		String sql="insert into team (team_id,team_name,team_owner,team_coach,amount_remaining) values(team_id_sq.nextVal,?,?,?,?)";

		try(Connection con = DbConnection.getConnection();
						PreparedStatement stmt =con.prepareStatement(sql))
		{
			stmt.setString(1, teamName);
			stmt.setString(2,teamOwner);
			stmt.setString(3, teamCoach);
			stmt.setInt(4, amountRemaining);
			stmt.executeUpdate(sql);
		}
		catch(Exception e) {
			log.error(e);
		}
	}
	@Override
	public ArrayList<Team>viewTeam(String teamName) throws DbException{
	  ArrayList<Team> l=new ArrayList<Team>();
    String sqll="select * from team where team_name=?";

	try
	(
		Connection con = DbConnection.getConnection();
					PreparedStatement stmt = con.prepareStatement(sqll);){
		stmt.setString(1,teamName);
		try(ResultSet rs=stmt.executeQuery())
		{
		  if(rs.next())
		  {
			  Team t=new Team();
			  t.setAmountRemaining(rs.getInt("amount_remaining")); 
			   t.setTeamName(rs.getString("team_name"));
			   t.setTeamCoach(rs.getString("team_coach"));
			   t.setTeamOwner(rs.getString("team_owner"));
			   t.setTeamId(rs.getInt("team_id"));
			   l.add(t);
		  }
		}
		
	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
	return l;	
	}

}
