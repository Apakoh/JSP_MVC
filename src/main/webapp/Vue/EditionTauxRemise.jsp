<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Saisie d'un taux de remise</title>
    </head>
    <body>
            <!-- On montre le formulaire de saisie -->
            <h1>Édition des taux de remise - TP MVC/JSP - Quentin-Gérome OMEL</h1>
            <form method="GET">
                Code : <input name="code" size="1" maxlength="1" pattern="[A-Z]{1}+" title="Une lettre en MAJUSCULES"><br>
                Taux : <input name="taux" type="number" step="0.01" min="0.0" max="99.99" size="5"><br>
                    <input type="hidden" name="action" value="ADD">
                    <input type="submit" value="Ajouter">
            </form>

            <div><h4></h4></div>

            <div>
                    <table border="1">
                            <tbody>
                                <tr>
                                    <th>Code</th>
                                    <th>Taux</th>
                                    <th>Action</th>
                                </tr>                                
                                <c:forEach var="discountCode" items="${discountCodes}">
                                    <tr>
                                        <td>
                                            ${discountCode.code}
                                        </td>
                                        <td>
                                            ${discountCode.taux}
                                        </td>
                                        <td>
                                            <a href="?action=DELETE&code=${discountCode.code}">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                    </table>
            </div>

    </body>
</html>
