<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="jsp/prelude.jsp" %>
<!DOCTYPE html>
<html>
  <head>
    <jsp:include page="local/head.jsp" flush="true"/>
    <title>Alix, démo</title>
  </head>
  <body>
    <header id="header" class="top accueil">
      <jsp:include page="local/tabs.jsp" flush="true"/>
    </header>
    <main>
       <div class="text" id="aide">
        <h1><a href="https://github.com/oeuvres/alix">Alix</a>, une démonstration</h1>
        <% if (alix == null) {%>
        <p class="alert">L’application est bien installée sur le serveur, 
        par contre, il n’y a encore aucun corpus à chercher.
Voyez dans le dossier <code>{alixapp}/WEB-INF/</code> comment indexer des corpus (ligne de commande).</p>
        <% } else {%>
        <form class="search" action="table.jsp">
          <%= selectCorpus(alix.name, "Choisissez un corpus") %>
          <button type="submit">▶</button>
        </form>
        <%}%>
        <p/>
        <p><a href="https://github.com/oeuvres/alix">Alix</a> est un moteur d’indexation lexicale et de statistiques destiné à la fouille 
        de textes. Cette interface permet d’en présenter et tester des algorithmes sur des corpus classiques. Il est possible de décliner la librairie de manière différente et plus ajustée. Autres utilisateurs de la librairie.</p>
        <ul>
          <li>Université de Genève, <a href="https://oeuvres.unige.ch/ddrlab/">DdR lab</a> (l’œuvre de Denis de Rougemont).</li>
          <li>Sorbonne université, <a href="https://obvil.huma-num.fr/obvie/">Obvie</a> plusieurs corpus</li>
        </ul>
       </div>
    </main>
  </body>
</html>