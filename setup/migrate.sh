#!/bin/bash


REDASH_PATH=/opt/redash/current/

for MIGRATION in $REDASH_PATH/migrations/* 
do
  echo -e "Applying migration from script $MIGRATION \n"
  PYTHONPATH=$REDASH_PATH $REDASH_PATH/bin/run python $MIGRATION
done
