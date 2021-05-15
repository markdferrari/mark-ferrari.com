#!/bin/bash
website=$1
if [ -z "$1" ]
then echo "Please specify directory"
	echo "Usage: ./deploy.sh \$1"
	exit 1
fi

# Sync it to s3
aws s3 sync $website/ s3://$website.mark-ferrari.com --exclude "*.git*"
