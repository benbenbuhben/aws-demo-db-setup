# AWS Demo App 1 - Database Setup

This repository contains scripts to set up the database for `aws-demo-app-1` and `aws-demo-app-2`. The scripts will create the necessary schema, populate data, and create a read-only user for the application to use.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Environment Setup](#environment-setup)
- [Database Setup](#database-setup)
- [Project Structure](#project-structure)

## Prerequisites

- MySQL client installed.
- Access to the MySQL database created by the Terraform infrastructure.
- `.env` file with database connection details.

## Environment Setup

1. **Create a `.env` file**:
    Create a `.env` file in the root directory and add the following environment variables:
    ```env
    DB_HOST=your_database_host
    DB_USER=your_database_user
    DB_PASS=your_database_password
    DB_NAME=your_database_name
    ```

2. **Add `.env` to `.gitignore`**:
    Make sure your `.env` file is added to `.gitignore` to keep it out of source control.
    ```plaintext
    .env
    ```

## Database Setup

1. **Run the setup script**:
    The `setup_db.sh` script will create the schema, populate data, and create a read-only user.
    ```sh
    ./setup_db.sh
    ```

## Project Structure

```plaintext
.
├── .env
├── create_readonly_user.sql
├── create_schema.sql
├── populate_data.sql
├── setup_db.sh
└── README.md
