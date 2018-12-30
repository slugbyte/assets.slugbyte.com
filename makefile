all: upload clear-cache

upload: 
	aws s3 cp $(PWD)/public/ s3://assets.slugbyte.com --recursive --acl public-read

clear-cache:
	aws cloudfront create-invalidation --distribution-id E2HJCHY5APKHMF --paths '/*'

