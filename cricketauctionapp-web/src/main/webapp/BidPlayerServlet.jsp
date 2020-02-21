<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BID</title>
</head>
<body>
<%
int playerId = Integer.parseInt(request.getParameter("pid"));
int cskbid = Integer.parseInt(request.getParameter("cbamount"));
int mibid = Integer.parseInt(request.getParameter("mbamount"));
int rcbbid = Integer.parseInt(request.getParameter("rbamount"));
int srhbid = Integer.parseInt(request.getParameter("sbamount"));
int kkrbid = Integer.parseInt(request.getParameter("kbamount"));

%>
</body>
</html>