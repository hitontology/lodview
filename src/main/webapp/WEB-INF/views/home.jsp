<%@page session="true"%><%@taglib uri="http://www.springframework.org/tags" prefix="sp"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><html version="XHTML+RDFa 1.1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/xhtml http://www.w3.org/MarkUp/SCHEMA/xhtml-rdfa-2.xsd" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#" xmlns:xsd="http://www.w3.org/2001/XMLSchema#" xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:foaf="http://xmlns.com/foaf/0.1/">
<head data-color="${colorPair}" profile="http://www.w3.org/1999/xhtml/vocab">
<title>${results.getTitle()}&mdash;LodView</title>
<jsp:include page="inc/header.jsp"></jsp:include>
</head>
<body id="top">
	<article>
		<div id="logoBanner">
			<div id="logo"><img src="https://pbs.twimg.com/profile_images/808290829123121152/phanLgu3_400x400.jpg"/>
				<!-- placeholder for logo -->
			</div>
		</div>
		<header>
			<hgroup>
				<h1>
					<span>Browse the SNIK Ontology</span>
				</h1>
				<h2>Semantic Network of Information Management in Hospitals</h2>
			</hgroup>
			<div id="abstract">
				<div class="value">
Example Classes:
<ul>
<li><a href="http://www.snik.eu/meta/Top">meta:Top</a></li>
<li><a href="http://www.snik.eu/meta/EntityType">meta:EntityType</a></li>
<li><a href="http://www.snik.eu/meta/Function">meta:Function</a></li>
<li><a href="http://www.snik.eu/meta/Role">meta:Role</a></li>
<li><a href="http://www.snik.eu/bb/InformationManagementEntityType">bb:InformationManagementEntityType</a></li>
<li><a href="http://www.snik.eu/ob/InformationAquisitionMethod">ob:InformationAquisitionMethod</a></li>
</ul>
			</div>
			</div>

		</header>

		<aside class="empty"></aside>

		<div id="directs">

			<div class="value">
See also:
<ul>
<li><a href="http://www.snik.eu/graph">Visualization</a></li>
<li><a href="http://www.snik.eu/sparql">SPARQL Endpoint</a></li>
<li><a href="http://www.snik.eu">Project Homepage</a></li>
</ul>
</div>

		</div>

		<div id="inverses" class="empty"></div> 
		<jsp:include page="inc/custom_footer.jsp"></jsp:include>
	</article>
	<jsp:include page="inc/footer.jsp"></jsp:include>

</body>
</html>
