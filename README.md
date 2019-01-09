# CORBA-Hello-World
CORBA Hello World Java Implementation

## Execution Example
```
shell> ./bin/IDL2Java.sh	# Generates Java bindings for resources/Hello.idl
shell> ./bin/compileJava.sh	# Compiles Java code and places it in build folder
shell> ./bin/ORBd_start.sh	# Starts ORB service on port 1050
```

Once the ORB service is running, we can start the server executing `bin/server_run.sh` and the client with `bin/client_run.sh`.

> **NOTE**: In Windows machines, you can use `.bat` files
