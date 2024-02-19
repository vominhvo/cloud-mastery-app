# cloud-mastery-app
This repository for the CloudMastery project, containing both frontend and backend code.

## Build Backend with GraalVM
1. Download SDKMAN! at: https://www.graalvm.org/downloads/#

``` 
sdk install java 17.0.10-graal 
```
2. Unzip the archive and rename to `C:\Progra~1\Java\graalvm`
3. There can be multiple JDKs installed on the machine. The next step is to configure the runtime environment. Setting environment variables via the command line will work the same way for Windows 8, 10, and 11.

Set the value of the PATH environment variable to the GraalVM bin directory:
```
setx /M PATH "C:\Progra~1\Java\graalvm\bin;%PATH%"
```
Set the JAVA_HOME environment variable to resolve to the GraalVM installation directory:

```
setx /M JAVA_HOME "C:\Progra~1\Java\graalvm"
```
Note that the `/M` flag, equivalent to `-m`, requires elevated user privileges.

4. 3