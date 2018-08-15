#!/bin/bash

souFile=$1;
text=$(<"${souFile}")
xmlString='<?xml version="1.0" encoding="UTF-8"?>'
currentDate=$(date +%Y-%m-%dT%TZ)
soapHead='<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"><SOAP-ENV:Header/><SOAP-ENV:Body>'
soapTail='</SOAP-ENV:Body></SOAP-ENV:Envelope>'



function executeCurl() {

	#TODO: Add functionality to put xml string directly as text in, without a file provided.
	curl -v --request POST --url 'http://localhost:9001/ecisapartmasimport/ARTMAS05' --header 'Cache-Control: no-cache' --header 'Content-Type: text/xml' --data "${text}"

}


function main() {

	if [ ! -e "${souFile}" ] 
		then
			echo "No File specified. Exiting"
			exit 42
	fi

	
	deleteXmlString
	setCurrentDate
	concatSoapStrings
	executeCurl
	#echo "${text}"

}

function deleteXmlString() {

	text=$(sed /"${xmlString}"/d <<< "${text}")

}

function concatSoapStrings() {

	if [[ "${text/Envelop}" = "${text}" ]]; then
		text="${soapHead}${text}${soapTail}"
	else
		echo "SoapHeader already existing."
	fi

}

function setCurrentDate() {

	text=${text/?CURRENT_TIME/${currentDate}}

}


# Here the magic begins
main
