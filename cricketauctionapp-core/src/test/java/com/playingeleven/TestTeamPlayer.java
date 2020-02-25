package com.playingeleven;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.playingeleven.dao.impl.PlayersDAOImpl;
import com.playingeleven.dao.impl.TeamPlayerDAOImpl;
import com.playingeleven.model.Players;
import com.playingeleven.model.TeamPlayer;

import logger.Logger;
public class TestTeamPlayer {
	private static final Logger log = Logger.getInstance();

	public static void main(String[] args) throws Exception {
PlayersDAOImpl p=new PlayersDAOImpl();
List<Players> lp=new ArrayList<Players>();
lp=p.searchPlayers("R");
for(Players p1:lp)
	System.out.println(p1);
	}

	public static void insertTeamPlayer() throws Exception {
		Scanner sc = new Scanner(System.in);
		log.getInput("Enter player id");
		int playrId = sc.nextInt();
		log.getInput("Enter team id");
		int teammId = sc.nextInt();
		log.getInput("Enter Amount sold");
		int soldPrice = sc.nextInt();
		TeamPlayer ob = new TeamPlayer();
		ob.setPlayrId(playrId);
		ob.setTeammId(teammId);
		ob.setSoldPrice(soldPrice);
		TeamPlayerDAOImpl impl = new TeamPlayerDAOImpl();
		impl.addTeamPlayer(ob.getPlayrId(), ob.getTeammId(), ob.getSoldPrice());
		sc.close();
	}
}
