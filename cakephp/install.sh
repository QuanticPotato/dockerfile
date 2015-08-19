#!/bin/bash

echo "root=" > /etc/ssmtp/ssmtp.conf
echo "AuthUser=$smtp_user" >> /etc/ssmtp/ssmtp.conf
echo "AuthUser=$smtp_password" >> /etc/ssmtp/ssmtp.conf
echo "mailhub=mail" >> /etc/ssmtp/ssmtp.conf
echo "hostname=$(hostname)" >> /etc/ssmtp/ssmtp.conf
