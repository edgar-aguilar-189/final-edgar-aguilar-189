Name: Edgar Aguilar

1. What is the difference between Docker image and Docker container?
    * A docker image is an unchangeable file that creates a snapshot of a container. It includes everything needed to run an application. A container is an abstraction at the app layer that contains code and dependencies for an application to run quickly and reliably from almost any computer environment. <!-- answer -->

2. What is the command to build a docker image named `cit384-final`?
    * docker build -t cit384-final . <!-- answer -->

3. What is the command to run a container with `cit384-final` image with an interactive terminal running bash?
    * docker run --rm -it cit384-final /bin/bash  <!-- answer -->

4. When running Docker commands there are many options you can use for example to run a container named cit384 with an ubuntu image the command is: `docker run --name cit384 ubuntu`. What do the following options do? 
   1. --name: Names my container cit384
   2. -d: Starts a container in detached mode. This will exit when the root process used to run the container exits. <!-- answer -->
   3. --rm: Automatically cleans up a container and deletes the filesystem when the container exits. <!-- answer -->
   4. -p: Exposes a container's internal port that is accessible on the host for any client to be able to reach it. <!-- answer -->
   5. --add-host: Add a custom host-to-IP mapping. <!-- answer -->
   6. -it: Allocates a pseduo-TTY connected to the container's stdin and creates an interactive bash shell. <!-- answer -->
   7. -v: Bind mount a volume <!-- answer -->

5. What is the difference between `-` and `--` in command line parameter?
    * A "-" indicates any number of single character flags. A "--" indicates only one multi character option. <!-- answer -->

6. In the following code block, provide the git instructions necessary to add a new file to the remote repository: git@github.com:org/project.git (You should presume that you don't have a copy of this repository on your local computer.)
   ```
    git clone git@github.com:org/project.git .                  <!-- answer -->
    touch newfile                                               <!-- answer -->
    git add .                                                   <!-- answer -->
    git commmit -m "Adding new file"                            <!-- answer -->
    git push                                                    <!-- answer -->
   ```
   <!-- You many add any number of lines in the above code block that you need. -->

7. What do the following Apache Directive do?
   1. SSLEngine: Allows us to enable or disable the SSL engine for 
   2. ProxyEngine: Toggles the usage of the SSL/TLS Protocol Engine for proxy. <!-- answer -->
   3. ProxyAddHeaders: Determines whether or not proxy related information should be passed to the backend sever through X-Forwarded-For, X-Forwarded-Host and X-Forwarded-Server HTTP headers. <!-- answer -->
   4. ProxyPass: Allows remote servers to be mapped in the space of the local server. <!-- answer -->
   5. ProxyPassReverse: This lets Apache httpd adjust the URL in the Location, Content-Location and URI headers on HTTP redirect responses. <!-- answer -->
   6. RewriteRule: Defines rules for the rewriting engine. <!-- answer -->
   7. Redirect: Maps an old URL into a new one by asking the client to refetch the resource at the new location. <!-- answer -->

8. What module needs to be enabled in order to use the Rewrite directive?
    * The rewrite module needs to be enabled. <!-- answer -->
9. What is the command to enable a new domain/vHost?
    * The command "a2ensite" enables a new vhost. <!-- answer -->
10. What is the command to disable a new domain/vHost?
    * The command "a2dissite" disables a vhost. <!-- answer -->
11. What happens when a user enters a URL into the browser?
    * First the IP address is looked up by the DNS. The browser then sends an HTTP request to the server and the server sends back an HTTP response. The page is then rendered via HTML and additonal requests are sent by the browser for HTML objects. <!-- answer -->

---
You may earn extra credit in this part of the assignment by: 
   1. Adding a file named ``interview_question.md`` to your repository
   2. Providing a comprehensive answer, in essay form, to the following question:
      * What happens when a user enters a URL into the browser?

Of course, your answer here need to much more complete and robust then the answer you provide to the last question in the assignment above.
