#!/bin/bash 
#script name:            Ops challenge 12
#Author:                 Joaquin Cortes
#Date of last revision:  02/03/2024
#Purpose:                Domain Analyzer

#Declaration of variables 
#Prompting the user for the domain name and taking that name and saving as a variable
read -p "Enter the domain name:" DomainName
Domain="$DomainName"

#Declaration of functions
DomainInformation() { 
  whois "$DomainName"
  dig "$DomainName"
  host "$DomainName"
  nslookup "$DomainName"
}

#Main
DomainInformation > DomainInfo.txt
#End