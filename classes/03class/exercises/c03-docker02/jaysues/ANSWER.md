# C03-Docker02

## Docker 
- [Dockerfile.v1](Dockerfile.v1)
- [Dockerfile.v2](Dockerfile.v2)

## Command Execution Output
- Curl command and its output of before changing the image:
```
➜  jaysues git:(jaysues/c03-docker02) ✗ curl http://localhost:8081
<h1>DevOps Academy - Docker - Exercise c03-docker02</h1>
➜  jaysues git:(jaysues/c03-docker02) ✗ curl http://localhost:8082
<h1>DevOps Academy - Docker - Exercise c03-docker02</h1>
```

- Curl command and its output of after changing the image:
```
curl http://localhost:8081
<h1>DevOps Academy - Docker - Exercise c03-docker02</h1>

curl http://localhost:8082
<h1>This should be different!</h1>

```

- Explain any difference between the responses of the webservers before and after changing the file locally:
```
The container on 8081 is using a copied image from the host but the copied image is now static - any edits done on the host will not affect the container. On 8082 the container is using a mapped volume to access the file so any changes made on that file will reflect on the container as well.
```

<!-- Don't change anything below this point-->
<!-- Before commiting, remove both commented lines--> 
***
Answer for exercise [c03-docker02](https://github.com/devopsacademyau/academy/blob/af3225a3436f263164e8daebc6bbd1ef3122b900/classes/03class/exercises/c03-docker02/README.md)