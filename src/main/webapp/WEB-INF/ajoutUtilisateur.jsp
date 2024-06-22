<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajout d'un utilisateur</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>
<body>
    <c:import url="inc/menu.jsp"/> 
    <div id="corps">
        <h1 id="titre-principal">Ajout d'un utilisateur</h1>
        <p id="statusMessage" class="${status ? 'succes' : 'erreur'}">${statusMessage}</p>
        <form method="post">
            <div class="formItem">
                <label for="nom">Nom</label>
                <input type="text" id="nom" name="nom" value="${utilisateur.nom}">
                <span class="erreur">${erreurs.nom}</span>
            </div>
            <div class="formItem">
                <label for="prenom">Prénom</label>
                <input type="text" id="prenom" name="prenom" value="${utilisateur.prenom}">
                <span class="erreur">${erreurs.prenom}</span>
            </div>
            <div class="formItem">
                <label for="login">Login</label>
                <input type="text" id="login" name="login" value="${utilisateur.login}">
                <span class="erreur">${erreurs.login}</span>
            </div>
            <div class="formItem">
                <label for="password">Mot de passe</label>
                <input type="password" id="password" name="password">
                <span class="erreur">${erreurs.password}</span>
            </div>
            <div class="formItem">
                <label for="passwordBis">Confirmez le mot de passe</label>
                <input type="password" id="passwordBis" name="passwordBis">
                <span class="erreur">${erreurs.passwordBis}</span>
            </div>
            <div class="formItem">
                <input type="submit" value="Ajouter">
            </div>
        </form>
    </div>
    <footer id="pied">
        <p>Copyright DIC3 ESP &copy; 2024</p>
    </footer>
</body>
</html>
