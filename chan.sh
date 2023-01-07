#!/bin/bash


DIRECTORY="/home/vboxuser"


DB_HOST=localhost
DB_USER=vboxuser
DB_PASSWORD=123
DB_NAME=chch


TABLE_NAME=N
COLUMN1_NAME=id
COLUMN2_NAME=name


psql -h "$DB_HOST" -U "$DB_USER" -d "$DB_NAME" -w "$DB_PASSWORD"

while true; do




  for FILE in $CHANGED_FILES; do
 
    psql -c "INSERT INTO $TABLE_NAME ($COLUMN1_NAME, $COLUMN2_NAME) VALUES ($COLUMN1_NAME, $COLUMN2_NAME);"
  done


  sleep 3600
done
