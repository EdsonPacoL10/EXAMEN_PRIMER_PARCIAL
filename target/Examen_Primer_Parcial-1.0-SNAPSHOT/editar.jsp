<%@page import="clase.Productos"%>
<%
    Productos item = (Productos) request.getAttribute("MiProducto");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor ="greed">
    <center><h1><%=(item.getId()==0)? "Nuevo Registro" : "Editar Registro" %></h1></center>
        <form action="MainController" method="post" >
           <input type="hidden" name="id" value="<%= item.getId() %>"/>
           <center><table >  
                <tr>
                    <td>DESCRIPCION </td>
                    <td><input type="text" name="descripcion" value="<%= item.getDescripcion()%>" /></td>
                </tr>
                <tr>
                    <td>CANTIDAD</td>
                    <td><input type="text" name="cantidad" value="<%= item.getCantidad()%>" /></td>
                </tr>
                <tr>
                    <td>PRECIO</td>
                    <td><input type="text" name="precio" value="<%= item.getPrecio()%>" /></td>
                </tr>
                <tr>
                    <td>CATEGORIA</td>
                    <td><input type="text" name="categoria" value="<%= item.getCategoria()%>" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
       </center>
    </body>
</html>
