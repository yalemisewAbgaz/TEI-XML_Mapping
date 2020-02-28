# TEI-XML_Mapping

This project is setup to convert tei/xml files of bavarian dialects into a LOD format.

The tei/xml conversion is included in a different project. However, the following database files are included:

- A self contained sample database with data from a sample tei/xml file. tei_xml_db_self_contained_dump.sql
- A set of database statements to create a fresh copy of the database.

Sample tei/xml file is included under TEI_XML_file folder 

To run the mapping on the current dump database

#### 1. import the database to mysql
#### 2. Set all the parameters into the config file under ALL_TEI_XML folder
      config_tei_xml.properties
#### 3. go to ALL_TEI_XML folder on a terminal
#### 3. execute the following statement
      java -jar ../r2rml.jar config_tei_xml.properties
      The resulting dataset in ttl format will be added to the folder after successful excution of the mapping.
      Errors will be displayed if there is something going wrong in the mapping
