deploy:
	serverless deploy -v

update:
	serverless deploy function -f hello

invoke:
	serverless invoke --function hello --data '{"Kubeless": "Welcome!"}' -l

delete:
	serverless remove

tail:
	serverless logs -f hello -t

tail_clock:
	serverless logs -f clock -t