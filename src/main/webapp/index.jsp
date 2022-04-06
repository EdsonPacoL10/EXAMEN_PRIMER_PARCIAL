
<%@page import="java.util.ArrayList"%>
<%@page import="clase.Productos"%>
<%
    if(session.getAttribute("lista")==null){
    ArrayList<String> lis=new ArrayList<String>();
    session.setAttribute ("lista",lis);
    }
    ArrayList<Productos> lista = (ArrayList<Productos>)session.getAttribute("ListaProducto");   
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor ="greed">
               <center><h1>LISTADO DE PRODUTOS</h1></center>
               <center>----------------------------------------------------------------------
                <br>
                                                                                           
                <br>
                                          PRIMER PARCIAL TEM-742                           
                <br>
                                                                                           
                <br>
                                 NOMBRE:EDSON JAVIER PACO LIMACHI                          
                <br>
                                 CARNET:5972576                                           
                <br>
                                                                                          
                <br>
                -----------------------------------------------------------------------------
                <br>
                </center>
    <center>    <a href="MainController?op=nuevo">Nuevo</a></center>
    <center><table border="5">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <%
                if (lista != null) {
                        for (Productos item : lista) {
                    
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria() %></td>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>"
                       onclick='return confirm("Esta Seguro de Eliminar el producto");' >Eliminar</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
</center>

    </body>
</html>
