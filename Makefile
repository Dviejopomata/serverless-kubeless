deploy:
	serverless deploy -v

update_markdown:
	serverless deploy function -f markdown
update:
	serverless deploy function -f hello

hello:
	serverless invoke --function hello --data '{"Kubeless": "Welcome!"}' -l

markdown:
	serverless invoke --function markdown --data '{"data":"-Item1\n-Item2"}' -l

delete:
	serverless remove

tail:
	serverless logs -f hello -t

tail_clock:
	serverless logs -f clock -t

freeze:
	pip freeze > requirements.txt