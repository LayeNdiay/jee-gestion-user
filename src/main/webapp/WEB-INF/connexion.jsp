<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% final String APP_ROOT = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connexion utilisateur</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
</head>
<body>
    <header id="entete">
        <h1>Connexion</h1>
    </header>
    
    <main id="corps">
        <form method="post" action="login">
            <div class="formItem">
                <label for="login">Login</label>
                <input type="text" id="login" name="login" required/>
            </div>
            <div class="formItem">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required/>
            </div>
            <div class="formItem">
                <input type="submit" value="se connecter"/>
            </div>
        </form>
    </main>
    
    <footer id="pied">
        <p>Copyright DIC3 ESP &copy; 2024</p>
    </footer>
</body>
</html>
