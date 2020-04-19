# simple-webapp

###  .github/workflows/google.yml
>This file contains all necessary configurations about ci/cd process.
>It is responsible to:
* install gcloud sdk
* update docker/config.json file 
* execute docker build command
* tag and push image to gcr
* execute kubectl delete, apply commands

### deployment, service, ingress, hpa, kustomization yaml files
> This files contains necessary configurations for kubernetes cluster.
> Each one has their own explanation inside.

## Useful shell commands:
* Build docker image: \
`docker build -t gcr.io/concise-quarter-274612/my-node-alpine .`
* Then run it: \
`docker run -it -p 8080:11130 gcr.io/concise-quarter-274612/my-node-alpine`\
Open localhost:8080 on your web browser to verify.

* k8s deploy
> Basicly deployment.yaml and service.yaml files are necessary to 
> run and test application. First we need to deploy them with the following command:\
`kubectl apply -f deployment.yaml -f service.yaml`\
>
>After that we can get the external ip address and port with following command:\
`kubectl get svc -o wide`

> Now we can open web browser and copy the external ip and port number.
`Example: 34.65.193.126:30167`

* Add some load:
> I used to command below to test hpa.
> Note: Change the ip and port in the command with your external ip and port.\
`while true ; do curl -Ss -k --write-out '%{http_code}\n' --output /dev/null http://34.65.193.126:30167 ; done`

* List all cluster resources:
`kubectl get all --all-namespaces`
* List all resources on current namespace:
`kubectl get all`