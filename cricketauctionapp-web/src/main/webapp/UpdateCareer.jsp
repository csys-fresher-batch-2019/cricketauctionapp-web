<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	<form action="UpdateCareerr.jsp" accept="image/gif,image/jpeg"><pre>
	<h2>Update Career details</h2>
   Career No:            <input type="number" name="cno"><br>
   Matches:              <input type="number" name="match"><br>
   Innings:              <input type="number" name="inn"><br> 
   Not outs:             <input type="number" name="nouts"><br> 
   runs scored:          <input type="number" name="rscore"><br> 
   balls bowled:         <input type="number" name="bbowl"><br> 
   runs conceded:        <input type="number" name="rcon"><br> 
   wickets:              <input type="number" name="wicket"><br> 
   stumpings:            <input type="number" name="stump"><br> 
   catches:              <input type="number" name="catch"><br>  	
		
		                                                                     <input type="submit" value="Submit">
		     
	</pre>
	</form>
</body>
</html>
