#!/bin/bash

sudo yum install git -y

sudo git clone https://github.com/SherifO2s/aws-rds-alb-asg-proj.git

export DB_LINK="postgresql://postgres:Admin1234@april-asg-app.c1cmay622txx.eu-west-2.rds.amazonaws.com:5432/mydb"

sudo chmod u+x aws-rds-alb-asg-proj/app/run.sh

bash aws-rds-alb-asg-proj/app/run.sh &