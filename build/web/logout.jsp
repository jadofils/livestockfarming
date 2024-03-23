<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="javax.servlet.http.*" %>

<%
    // Invalidate the session
    session = request.getSession(false);
    if (session != null) {
        session.invalidate();
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="refresh" content="3;url=loginfarmer">
</head>
<body>
    <h2>Logout Successful</h2>
    <p>Redirecting to login page...</p>
</body>
</html>
