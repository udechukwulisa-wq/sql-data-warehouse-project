/*
================================================
Create Database and Schemas
=================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists. Additionally, the script sets up three tables(layers) within the database: 'bronze', 'silver', and 'gold'.
*/

-- Create Database 'DataWarehouse'
CREATE DATABASE IF NOT EXISTS DataWarehouse;
USE DataWarehouse;

-- Create bronze layer tables
CREATE TABLE bronze_customers(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    raw_data JSON
);

-- Create silver layer tables
CREATE TABLE silver_customers(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    raw_data JSON
);

-- Create gold layer tables
CREATE TABLE gold_customers(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    raw_data JSON
);
