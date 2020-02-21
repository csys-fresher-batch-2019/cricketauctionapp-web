<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bid player</title>
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
	<form action="BidPlayerServlet"><pre>
	<h2>Bid Player</h2>
   Player Id:              <input type="number" name="pid"><br>
   CSK Bid Amount:              <input type="number" name="cbamount"><br> 
   MI Bid Amount:              <input type="number" name="mbamount"><br> 
   RCB Bid Amount:              <input type="number" name="rbamount"><br> 
   SRH Bid Amount:              <input type="number" name="sbamount"><br> 
   KKR Bid Amount:              <input type="number" name="kbamount"><br> 
   	
		
	<input type="submit" value="Submit">
		     
	</pre>
</form>
</body>
</html>
