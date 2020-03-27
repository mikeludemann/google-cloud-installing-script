#!/bin/bash

echo "Checking google cloud sdk"

echo "Prerequisite:"

if python -V > /dev/null; then
	echo "python is already installed."
fi

if gcloud version > /dev/null; then
	echo "google cloud sdk is already installed."
else
	echo "installing google cloud sdk"
	if curl --version > /dev/null; then
		echo "curl is already installed."
		echo "Download the package:"
		curl https://sdk.cloud.google.com | bash
		echo "Start the shell:"
		exec -l $SHELL
		echo "Init the google cloud"
		gcloud init
	else
		echo "curl is not installed"
	fi
	echo "google cloud sdk is not installed. / Could not be installed."
fi
