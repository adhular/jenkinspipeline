FROM 729150221553.dkr.ecr.us-west-1.amazonaws.com/codebuild123321:latest
#FROM 729150221553.dkr.ecr.us-west-2.amazonaws.com/alpinenode:httpd2.4
COPY ./public-html/ /usr/local/apache2/htdocs/
EXPOSE 80
