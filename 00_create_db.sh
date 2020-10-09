#!/bin/bash

echo "Setting up default IDS PostgreSQL user!\n"

set -e

psql --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER $DATABASE_USER WITH PASSWORD '$DATABASE_USER_PW' ;
	CREATE DATABASE ids OWNER $DATABASE_USER;
	EOSQL
