<%@ page import="java.net.InetAddress" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  Date: 2019-09-02
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <h2>info</h2>
    <ul>
      <li>Servername: ${request.serverName}</li>
      <li>localhost: ${InetAddress.getLocalHost()}</li>
    </ul>

    <h2>cookie</h2>
    <ul><%
      if (request.getCookies() != null) {
        for (Cookie cookie : request.getCookies()) {
          out.println("<li>" + cookie.getName() + ": " + cookie.getValue() + "</li>");
        }
      }
    %></ul>
    <h2>session</h2>
    <p>
      <%= request.getSession(true).getId() %>
    </p>
  </body>
</html>
