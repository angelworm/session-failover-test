<%--
  Created by IntelliJ IDEA.
  Date: 2019-09-02
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  if (session != null) {
      session.invalidate();
  }
%>
<jsp:forward page="index.jsp"/>