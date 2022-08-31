#!/bin/bash

# easier to run if 
# alias gcreds=". ~/path_to/script/export_g_creds.sh"
# is added to whatever ._rc 

environment=$1
qa_cred=/path/to/qa.json # Change placeholder path
prod_cred=/path/to/prod.json # Change placeholder path


if [ "$environment" = "dev" ] || [ "$environment" = "qa" ]
then
	export GOOGLE_APPLICATION_CREDENTIALS=$qa_cred
	echo "Exported qa SA creds"
elif [ "$environment" = "prod" ] || [ "$environment" = "production" ]
then
	export GOOGLE_APPLICATION_CREDENTIALS=$prod_cred
	echo "Exported prod SA creds"
else
	echo "Please enter qa/dev or prod"
fi
