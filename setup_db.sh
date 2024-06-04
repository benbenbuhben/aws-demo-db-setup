#!/bin/bash

# Source the environment variables from the .env file
if [ -f .env ]; then
  export $(cat .env | xargs)
fi

# Create schema and populate data
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < create_schema.sql
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < populate_data.sql

# Create read-only user
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < create_readonly_user.sql
