-- Basic database schema for Railway Reservation System

CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10)
);

CREATE TABLE trains (
    train_id INT PRIMARY KEY,
    train_name VARCHAR(100),
    source VARCHAR(50),
    destination VARCHAR(50)
);

CREATE TABLE reservations (
    reservation_id INT PRIMARY KEY,
    passenger_id INT,
    train_id INT,
    date_of_journey DATE,
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id),
    FOREIGN KEY (train_id) REFERENCES trains(train_id)
);
