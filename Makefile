deploy:
	serverless deploy -v

update_markdown:
	zip markdown.zip handler.py requirements.txt
	serverless deploy function -f markdown

update_sendmail:
	zip mail.zip handler.py requirements.txt	
	serverless deploy function -f sendmail

update_hello:
	zip hello.zip handler.py requirements.txt	
	serverless deploy function -f hello

update_clock:
	zip clock.zip handler.py requirements.txt
	serverless deploy function -f clock
	
hello:
	serverless invoke --function hello --data '{"Kubeless": "Welcome!"}' -l

markdown:
	serverless invoke --function markdown --data '{"data":"-Item1\n-Item2"}' -l

delete:
	serverless remove

package_all:
	zip mail.zip handler.py requirements.txt
	zip hello.zip handler.py requirements.txt
	zip clock.zip handler.py requirements.txt
	zip markdown.zip handler.py requirements.txt

publish:
	kubeless topic publish --topic send_mail --data 'dvp@gmail.com'

tail:
	serverless logs -f hello -t

tail_clock:
	serverless logs -f clock -t

freeze:
	pip freeze > requirements.txt