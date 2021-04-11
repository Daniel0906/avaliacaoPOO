<%-- 
    Document   : disciplinas
    Created on : 11 de abr. de 2021, 17:37:06
    Author     : Mariana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("session.username") != null){
    session.setAttribute("session.username", request.getParameter("session.username"));
    response.sendRedirect(request.getRequestURI());
    }else if(request.getParameter("session.logout") != null){
        session.removeAttribute("session.username");
        response.sendRedirect(request.getRequestURI());
    }
    
    String errorMessage = null;
    double p1POO = 0;
    double p2POO = 0;
    double p1BDD = 0;
    double p2BDD = 0;
    double p1INGIV = 0;
    double p2INGIV = 0;
    double p1EDD = 0;
    double p2EDD = 0;
    double p1SOII = 0;
    double p2SOII = 0;
    double p1MET = 0;
    double p2MET = 0;
    double p1ESIII = 0;
    double p2ESIII = 0;
    double p1LPIV = 0;
    double p2LPIV = 0;
    
    try {
        if(request.getParameter("session.p1POO") == ""){
            p1POO = 0;
        }else{
            p1POO = Double.parseDouble(request.getParameter("session.p1POO"));
        }if(request.getParameter("session.p2POO") == ""){
            p2POO = 0;
        }else{
            p2POO = Double.parseDouble(request.getParameter("session.p2POO"));
        }
            session.setAttribute("session.p1POO", request.getParameter("session.p1POO"));
            session.setAttribute("session.p2POO", request.getParameter("session.p2POO"));
        
        
    }catch(Exception ex){
        
    }
    
    //bdd
    try {
        if(request.getParameter("session.p1BDD") == ""){
            p1BDD = 0;
        }else{
            p1BDD = Double.parseDouble(request.getParameter("session.p1BDD"));
        }if(request.getParameter("session.p2BDD") == ""){
            p2BDD = 0;
        }else{
            p2BDD = Double.parseDouble(request.getParameter("session.p2BDD"));
        }
            session.setAttribute("session.p1BDD", request.getParameter("session.p1BDD"));
            session.setAttribute("session.p2BDD", request.getParameter("session.p2BDD"));
        
        
    }catch(Exception ex){
        
    }
    
    
    //INGIV
    try {
        if(request.getParameter("session.p1INGIV") == ""){
            p1INGIV = 0;
        }else{
            p1INGIV = Double.parseDouble(request.getParameter("session.p1INGIV"));
        }if(request.getParameter("session.p2INGIV") == ""){
            p2INGIV = 0;
        }else{
            p2INGIV = Double.parseDouble(request.getParameter("session.p2INGIV"));
        }
            session.setAttribute("session.p1INGIV", request.getParameter("session.p1INGIV"));
            session.setAttribute("session.p2INGIV", request.getParameter("session.p2INGIV"));
        
        
    }catch(Exception ex){
        
    }
    
    //EDD
    try {
        if(request.getParameter("session.p1EDD") == ""){
            p1EDD = 0;
        }else{
            p1EDD = Double.parseDouble(request.getParameter("session.p1EDD"));
        }if(request.getParameter("session.p2EDD") == ""){
            p2EDD = 0;
        }else{
            p2EDD = Double.parseDouble(request.getParameter("session.p2EDD"));
        }
            session.setAttribute("session.p1EDD", request.getParameter("session.p1EDD"));
            session.setAttribute("session.p2EDD", request.getParameter("session.p2EDD"));
        
        
    }catch(Exception ex){
        
    }
    
    //SOII
    try {
        if(request.getParameter("session.p1SOII") == ""){
            p1SOII = 0;
        }else{
            p1SOII = Double.parseDouble(request.getParameter("session.p1SOII"));
        }if(request.getParameter("session.p2SOII") == ""){
            p2SOII = 0;
        }else{
            p2SOII = Double.parseDouble(request.getParameter("session.p2SOII"));
        }
            session.setAttribute("session.p1SOII", request.getParameter("session.p1SOII"));
            session.setAttribute("session.p2SOII", request.getParameter("session.p2SOII"));
        
        
    }catch(Exception ex){
        
    }
    
    //MET
    try {
        if(request.getParameter("session.p1MET") == ""){
            p1MET = 0;
        }else{
            p1MET = Double.parseDouble(request.getParameter("session.p1MET"));
        }if(request.getParameter("session.p2MET") == ""){
            p2MET = 0;
        }else{
            p2MET = Double.parseDouble(request.getParameter("session.p2MET"));
        }
            session.setAttribute("session.p1MET", request.getParameter("session.p1MET"));
            session.setAttribute("session.p2MET", request.getParameter("session.p2MET"));
        
        
    }catch(Exception ex){
        
    }
    
    //ESIII
    try {
        if(request.getParameter("session.p1ESIII") == ""){
            p1ESIII = 0;
        }else{
            p1ESIII = Double.parseDouble(request.getParameter("session.p1ESIII"));
        }if(request.getParameter("session.p2ESIII") == ""){
            p2ESIII = 0;
        }else{
            p2ESIII = Double.parseDouble(request.getParameter("session.p2ESIII"));
        }
            session.setAttribute("session.p1ESIII", request.getParameter("session.p1ESIII"));
            session.setAttribute("session.p2ESIII", request.getParameter("session.p2ESIII"));
        
        
    }catch(Exception ex){
        
    }
    
    //LPIV
    try {
        if(request.getParameter("session.p1LPIV") == ""){
            p1LPIV = 0;
        }else{
            p1LPIV = Double.parseDouble(request.getParameter("session.p1LPIV"));
        }if(request.getParameter("session.p2LPIV") == ""){
            p2LPIV = 0;
        }else{
            p2LPIV = Double.parseDouble(request.getParameter("session.p2LPIV"));
        }
            session.setAttribute("session.p1LPIV", request.getParameter("session.p1LPIV"));
            session.setAttribute("session.p2LPIV", request.getParameter("session.p2LPIV"));
        
        
    }catch(Exception ex){
        
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disciplinas</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <br><br>
        <% if(session.getAttribute("session.username") != null ){%>
            <form method="post">
                <table border="1px">
                    <tr>
                        <th>Disciplina</th>
                        <th>Nota - P1</th>
                        <th>Nota - P2</th>
                        <th>Input - P1</th>
                        <th>Input - P2</th>
                    </tr>
                    
                    <!-- POO -->
                    <tr>
                        <td>POO</td>
                        <td><%= session.getAttribute("session.p1POO") %></td>
                        <td><%= session.getAttribute("session.p2POO") %></td>
                        <td><input type="number" value="<%= p1POO %>" name="session.p1POO"></td>
                        <td><input type="number" value="<%= p2POO %>" name="session.p2POO"></td>
                    </tr>
                    
                    <!-- BDD -->
                    <tr>
                        <td>BDD</td>
                        <td><%= session.getAttribute("session.p1BDD") %></td>
                        <td><%= session.getAttribute("session.p2BDD") %></td>
                        <td><input type="number" value="<%= p1BDD %>" name="session.p1BDD"></td>
                        <td><input type="number" value="<%= p2BDD %>" name="session.p2BDD"></td>
                    </tr>
                    
                    <!-- INGIV -->
                    <tr>
                        <td>INGIV</td>
                        <td><%= session.getAttribute("session.p1INGIV") %></td>
                        <td><%= session.getAttribute("session.p2INGIV") %></td>
                        <td><input type="number" value="<%= p1INGIV %>" name="session.p1INGIV"></td>
                        <td><input type="number" value="<%= p2INGIV %>" name="session.p2INGIV"></td>
                    </tr>
                    
                    <!-- EDD -->
                    <tr>
                        <td>EDD</td>
                        <td><%= session.getAttribute("session.p1EDD") %></td>
                        <td><%= session.getAttribute("session.p2EDD") %></td>
                        <td><input type="number" value="<%= p1EDD %>" name="session.p1EDD"></td>
                        <td><input type="number" value="<%= p2EDD %>" name="session.p2EDD"></td>
                    </tr>
                    
                    <!-- SOII -->
                    <tr>
                        <td>SOII</td>
                        <td><%= session.getAttribute("session.p1SOII") %></td>
                        <td><%= session.getAttribute("session.p2SOII") %></td>
                        <td><input type="number" value="<%= p1SOII %>" name="session.p1SOII"></td>
                        <td><input type="number" value="<%= p2SOII %>" name="session.p2SOII"></td>
                    </tr>
                    
                    <!-- MET -->
                    <tr>
                        <td>MET</td>
                        <td><%= session.getAttribute("session.p1MET") %></td>
                        <td><%= session.getAttribute("session.p2MET") %></td>
                        <td><input type="number" value="<%= p1MET %>" name="session.p1MET"></td>
                        <td><input type="number" value="<%= p2MET %>" name="session.p2MET"></td>
                    </tr>
                    
                    <!-- ESIII -->
                    <tr>
                        <td>ESIII</td>
                        <td><%= session.getAttribute("session.p1ESIII") %></td>
                        <td><%= session.getAttribute("session.p2ESIII") %></td>
                        <td><input type="number" value="<%= p1ESIII %>" name="session.p1ESIII"></td>
                        <td><input type="number" value="<%= p2ESIII %>" name="session.p2ESIII"></td>
                    </tr>
                    
                    <!-- LPIV -->
                    <tr>
                        <td>LPIV</td>
                        <td><%= session.getAttribute("session.p1LPIV") %></td>
                        <td><%= session.getAttribute("session.p2LPIV") %></td>
                        <td><input type="number" value="<%= p1LPIV %>" name="session.p1LPIV"></td>
                        <td><input type="number" value="<%= p2LPIV %>" name="session.p2LPIV"></td>
                    </tr>
                </table>
            
            </form>
        <%}else{%>
            <% session.removeAttribute("session.username");%>
            <div style="color:red"><p>Você não tem permissão para acessar essa página, por favor efetue login</p></div>
            <% session.invalidate();%>
        <%}%>
    </body>
</html>
