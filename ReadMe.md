## How to Run 

* check out the project git clone https://github.com/franciscecil/employee.git

* cd to the employee folder
    * example cd d:/employee
execute the script from employee base folder 
    *  sh scripts\start.sh
        * This would build the spring boot app
        * download JRE 8 Alpine base Image
        * add it with the Spring boot App 
        * build the Docker Image 
        * Run the Docker Image
        
    * to test you can lauch the URL in the browser or curl command
        *  http://localhost:8082/hello?name=francis
        
        
```
D:\workspace\Java\idea\playground\git_public\employee (master -> origin)
λ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS              PORTS                    NAMES
842b0f9a205c        com.fcr.employee    "./entrypoint.sh --n…"   About a minute ago   Up About a minute   0.0.0.0:8082->8081/tcp   reverent_elgamal

D:\workspace\Java\idea\playground\git_public\employee (master -> origin)
λ curl http://localhost:8082/hello?name=francis
francis

```

### Docker 

* For Docker config please refer docker file
