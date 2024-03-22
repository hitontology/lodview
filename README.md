# LodView
This is the RDF browser for the HITO project published at <https://hitontology.eu/ontology>. It is a fork of the [SNIK fork](https://github.com/IMISE/snik-lodview) of [LodView](https://github.com/dvcama/LodView).
Successfully tested with Java 11.
Does not work with Java 18.
Java 8 in Docker is not recommended as it may not work with the default Docker configuration of some Linux distributions such as Arch Linux.
Other versions untested.

## Preview Locally
`mvn jetty:run`

## Create Tomcat .war File
`mvn war:war`
