#!/bin/bash

sudo yum install git -y

sudo git clone https://github.com/SherifO2s/aws-rds-alb-asg-proj.git

cd aws-rds-alb-asg-proj/app

sudo chmod u+x run.sh

# in path day2/app

python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
export DB_LINK=postgresql://postgres:Admin1234@april-asg-app.c1cmay622txx.eu-west-2.rds.amazonaws.com:5432/mydb

gunicorn run:app --bind 0.0.0.0:8000 &


# psql -h april-asg-app.c1cmay622txx.eu-west-2.rds.amazonaws.com -d mydb -U postgres

# pg_restore -d $DB_LINK -F c -j 4 -v mydb_20260503_004353.dump