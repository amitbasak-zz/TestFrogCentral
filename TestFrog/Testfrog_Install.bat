mvn install:install-file -Dfile="%cd%\bin\testfrog-0.0.1-SNAPSHOT-jar-with-dependencies.jar" -DgroupId="com.infrrd" -DartifactId=testfrog -Dversion="0.0.1-SNAPSHOT" -Dpackaging=jar
setx DRIVER_HOME "%cd%\drivers"
pause