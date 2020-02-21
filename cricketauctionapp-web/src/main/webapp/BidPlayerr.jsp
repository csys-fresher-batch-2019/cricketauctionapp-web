<%@page import="com.playingeleven.dao.impl.TeamDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
           <%@ page import="com.playingeleven.model.TeamPlayer" %>
  <%@ page import="com.playingeleven.dao.impl.TeamPlayerDAOImpl" %>
   <%@ page import="com.playingeleven.dao.dto.TeamPlayerPlayers" %>
        <%@ page import="com.playingeleven.model.Team" %>
  <%@ page import="com.playingeleven.dao.impl.TeamDAOImpl" %>
   <%@ page import="java.util.HashMap" %>
 <%@ page import = "java.util.HashSet" %>
 <%@ page import = "java.util.Map" %>
 <%@ page import = "java.util.Scanner" %>
 <%@ page import =  "java.util.Set" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>bid player</title>
</head>
<style>
body {
    background-color: #aaa;
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: 100% 100%;
}
body {font-family: Arial, Helvetica, sans-serif;}


</style>
<body>
<%
int playerId = Integer.parseInt(request.getParameter("pid"));
int n = 1;
int teamId;
out.print("round no" + n);
String[] teams = { "CSK", "MI", "RCB", "SRH", "KKR" };
int[] teamIds = { 101, 102, 103, 104, 105 };
int selectedTeamId = 0;
Map<Integer, Integer> bid = new HashMap<Integer, Integer>();
Set<Integer> amountSet = new HashSet<Integer>();
int max = -1;
for (int i = 0; i < teams.length; i++) {
	String teamName = teams[i];
	int teaamId = teamIds[i];
	boolean repeat = false;
	int amount = 0;
	do {
		//out.print(
			//	"Team " + teamName + ", Enter the bidding Amount for playerid " + playerId + " at round no" + n);
		
		amount =  Integer.parseInt(request.getParameter("bamount"));
		if (amountSet.contains(amount)) {
			repeat = true;
			out.print("Reenter different Amount. Already someone has bidded.");
		}
		else{
			amountSet.add(amount);
			repeat = false;
		}
	}
	while( repeat);
	
	if (amount > 0) {
		bid.put(teaamId, amount);
	}
	if ( amount > max) {
		max = amount;
		selectedTeamId = teaamId;
	}		

}
out.print(bid);
// int [] numbers = {};
int numbers;
Set<Integer> keySet = bid.keySet();
for (int x : keySet) {
	// int arr[]=sc.nextInt();
	// System.out.print( x );
}
out.print("TeamId " + selectedTeamId + ",highest bid is " + max);
TeamPlayer ob = new TeamPlayer();
ob.setPlayrId(playerId);
ob.setTeammId(selectedTeamId);
ob.setSoldPrice(max);
TeamPlayerDAOImpl impl = new TeamPlayerDAOImpl();
impl.addTeamPlayer(ob.getPlayrId(),ob.getTeammId(),ob.getSoldPrice());

TeamDAOImpl impl1=new TeamDAOImpl();
impl1.UpdateTotalAmount(ob.getTeammId(), ob.getSoldPrice());

%>

</body>
</html>