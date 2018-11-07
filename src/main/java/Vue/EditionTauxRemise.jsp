<%-- 
    Document   : EditionTauxRemise
    Created on : 7 nov. 2018, 16:25:20
    Author     : Spard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Saisie d'un taux de remise</title>
    </head>
    <body>
            <!-- On montre le formulaire de saisie -->
            <h1>Edition des taux de remise</h1>
            <form method="GET">
                Code : <input name="code" size="1" maxlength="1" pattern="[A-Z]{1}+" title="Une lettre en MAJUSCULES"><br>
                Taux : <input name="taux" type="number" step="0.01" min="0.0" max="99.99" size="5"><br>
                    <input type="hidden" name="action" value="ADD">
                    <input type="submit" value="Ajouter">
            </form>

            <div><h4></h4></div>

            <div>
                    <table border="1">
                            <tbody><tr><th>Code</th><th>Taux</th><th>Action</th></tr>

                                    <tr>
                                            <td>8</td>
                                            <td>87,00 %</td>
                                            <td><a href="?action=DELETE&amp;code=8">delete</a></td>
                                    </tr>	  		    

                                    <tr>
                                            <td>H</td>
                                            <td>16,00 %</td>
                                            <td><a href="?action=DELETE&amp;code=H">delete</a></td>
                                    </tr>	  		    

                                    <tr>
                                            <td>L</td>
                                            <td>07,00 %</td>
                                            <td><a href="?action=DELETE&amp;code=L">delete</a></td>
                                    </tr>	  		    

                                    <tr>
                                            <td>M</td>
                                            <td>11,00 %</td>
                                            <td><a href="?action=DELETE&amp;code=M">delete</a></td>
                                    </tr>	  		    

                                    <tr>
                                            <td>N</td>
                                            <td>00,00 %</td>
                                            <td><a href="?action=DELETE&amp;code=N">delete</a></td>
                                    </tr>	  		    

                    </tbody></table>
            </div>

    </body>
</html>
