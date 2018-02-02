deploy:
	serverless deploy -v

update:
	serverless deploy function -f hello

invoke:
	serverless invoke --function hello --data '{"Kubeless": "Welcome!"}' -l

tail:
	serverless logs -f hello -t