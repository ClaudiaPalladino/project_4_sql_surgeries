-- ===========
-- Projects SQL
-- ===========

-- 
CREATE DATABASE surgeries_database;
USE surgeries_database;

-- Create hospitals table
CREATE TABLE hospitals (
    id_health_centre INT AUTO_INCREMENT PRIMARY KEY,
    health_centre VARCHAR(150) NOT NULL,
    region VARCHAR(50),
    location VARCHAR(150)
);

-- Create health_data table
CREATE TABLE health_data (
    year INT NOT NULL,
    month INT NOT NULL,
    id_health_centre INT NOT NULL,  -- foreign key
    conventional_surgeries INT, 
    scheduled_surgeries INT,
    ambulatory_surgeries INT,
    urgent_surgeries INT,
    tot_patients_waiting INT,
    patients_normal_waiting_time INT,
    pct_patients_normal_waiting_time FLOAT,
    FOREIGN KEY (id_health_centre) REFERENCES hospitals(id_health_centre)
);
