setlocal
FOR /F "tokens=*" %%i in (./environment/.env) do SET %%i
java -jar ./target/phi-config-service-0.0.1-SNAPSHOT.jar
endlocal