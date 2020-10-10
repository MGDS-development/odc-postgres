#!/bin/bash

echo "Setting up default IDS PostgreSQL user!"

set -e

psql --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER $DATABASE_USER PASSWORD '$DATABASE_USER_PW' ;
	CREATE DATABASE ids OWNER $DATABASE_USER;
	EOSQL
