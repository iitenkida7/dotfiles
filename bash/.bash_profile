
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

 export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2376
 export DOCKER_CERT_PATH=/Users/takeshi/.boot2docker/certs/boot2docker-vm
 export DOCKER_TLS_VERIFY=1
