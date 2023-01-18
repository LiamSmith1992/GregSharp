CREATE TABLE
    IF NOT EXISTS accounts(
        id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
        name varchar(255) COMMENT 'User Name',
        email varchar(255) COMMENT 'User Email',
        picture varchar(255) COMMENT 'User Picture'
    ) default charset utf8 COMMENT '';

-- Create a table to store data

CREATE TABLE
    syrups(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(20) NOT NULL COMMENT 'the name of the product',
        viscosity INT NOT NULL DEFAULT 5,
        color VARCHAR(15),
        flavor VARCHAR(20) NOT NULL DEFAULT 'Maple',
        canadian BOOLEAN NOT NULL DEFAULT true
    ) default charset utf8 COMMENT '';

-- Delete a table in it's entirity

DROP TABLE syrups;

-- Insert to add data to table (CREATE)

INSERT into
    syrups (
        name,
        viscosity,
        color,
        flavor,
        canadian
    )
VALUES (
        "Grandma Sycamore's",
        7,
        'brown',
        'Maple',
        false
    );

INSERT into
    syrups (
        name,
        viscosity,
        color,
        flavor,
        canadian
    )
VALUES (
        "Cough Max",
        2,
        'red',
        'Cherry',
        false
    );

("Grandma Sycamore's", 7, 'brown', 'Maple', false);

INSERT into
    syrups (
        name,
        viscosity,
        color,
        flavor,
        canadian
    )
VALUES (
        "Welches",
        1,
        'purple',
        'Huckleberry',
        false
    );

INSERT into
    syrups (
        name,
        viscosity,
        color,
        flavor,
        canadian
    )
VALUES (
        "High Fructose Corn",
        10,
        'light yellow',
        'Freedom',
        false
    );

INSERT into
    syrups (
        name,
        viscosity,
        color,
        flavor,
        canadian
    )
VALUES (
        "Pure Tree Sap",
        8,
        'light brown',
        'Maple and bark',
        true
    );

-- SELECT to Get data from a table

SELECT * FROM syrups;

-- You specific Column selects

SELECT id, id, name AS syrup_name, viscosity from syrups;

-- WHERE truncates the results by it's CONDITION

-- ORDER BY sorts the table by that field

SELECT * FROM syrups WHERE viscosity < 8 ORDER BY viscosity;

-- SECTION CARS

CREATE TABLE
    cars(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        make VARCHAR(255) NOT NULL,
        model VARCHAR(255) NOT NULL,
        year INT NOT NULL,
        price DOUBLE NOT NULL,
        description TEXT,
        color VARCHAR(10),
        imgUrl VARCHAR(255),
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update'
    ) default charset utf8mb4 COMMENT "for the emojis";

DROP TABLE cars;

INSERT INTO
    cars (
        make,
        model,
        year,
        price,
        color,
        `imgUrl`,
        description
    )
VALUES (
        'Toyota',
        'Bugati',
        2000,
        12.99,
        '#000000',
        'https://s1.cdn.autoevolution.com/images/news/bugatti-chiron-gets-toyota-camry-face-swap-design-still-works-139036_1.jpg',
        'A Sick black toyota bugati hotwheels'
    );

INSERT INTO
    cars (
        make,
        model,
        year,
        price,
        color,
        `imgUrl`,
        description
    )
VALUES (
        'Toyota',
        'Telsa',
        2000,
        1200.50,
        '#FFFFFF',
        'https://i.insider.com/617c5be123745d0018244b86?width=1136&format=jpeg',
        'A Sick competetor for the other one of a similar name, please do not sue us.'
    );

INSERT INTO
    cars (
        make,
        model,
        year,
        price,
        color,
        `imgUrl`,
        description
    )
VALUES (
        'Toyota',
        'Slingshot',
        2002,
        150.50,
        '#FFFFFF',
        'https://cdn1.polaris.com/globalassets/slingshot/2023/model/vehicle-cards/us/slingshot-slr-us-my23-a85a-red-shadow-m.png?v=ac0e4548&format=webp',
        'Everything rattles out of the box.'
    );

INSERT INTO
    cars (
        make,
        model,
        year,
        price,
        color,
        `imgUrl`,
        description
    )
VALUES (
        '🦧',
        'Oslo',
        2002,
        150.50,
        '#FFFFFF',
        'https://images.squarespace-cdn.com/content/v1/5a00ee59914e6b9803131e8f/f8c7ef16-ca18-4317-b30a-82a61e1bd8d9/Screen+Shot+2022-01-02+at+7.05.51+PM.png',
        'Everything rattles out of the box.'
    );

SELECT LAST_INSERT_ID();

-- PUT or update car

UPDATE cars
Set
    make = '🚤',
    model = 'speedboat',
    year = 2222,
    color = 'rock',
    description = "What i've been driving to school these days",
    imgUrl = "https://sportshub.cbsistatic.com/i/2021/03/17/9ec01251-4341-459a-9bc2-c222ea9f7418/spongebob-squarepants-boulder-1177707.jpg"
WHERE id = 7;

DELETE from cars WHERE id = 120;

CREATE TABLE
    houses(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        squareft INT NOT NULL COMMENT 'how big your house?',
        price INT NOT NULL COMMENT 'how much your house?',
        imgUrl VARCHAR(255),
        description TEXT COMMENT 'Its got the juice',
        bathrooms FLOAT NOT NULL,
        floors DOUBLE NOT NULL,
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update'
    ) default charset utf8mb4 COMMENT '';

DROP TABLE houses;

INSERT INTO
    houses(
        squareft,
        price,
        imgUrl,
        description,
        bathrooms,
        floors
    )
VALUES (
        2333,
        344,
        'https://i.pinimg.com/564x/63/bc/ba/63bcbae735a36021d531eab30d904e38--fairy-houses-cool-tree-houses.jpg',
        'needs a little work should be good to go though',
.5,
        1
    );