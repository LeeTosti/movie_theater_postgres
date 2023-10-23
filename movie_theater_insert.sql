INSERT INTO customers
VALUES(
    1001,
    'Matt',
    'Sauro',
    '4532 N Lincoln Ave Chicago, IL 60625',
    'mattemail@gmail.com'
);

INSERT INTO customers
VALUES(
    1002,
    'Lee',
    'Tosti',
    '321 Chicago Ave Evanston, IL 60202',
    'lee_email@gmail.com'
);

INSERT INTO theaters
VALUES(
    3001,
    '124 N Main St. Evanston, IL 60202',
    '773-737-3737'
);

INSERT INTO theaters
VALUES(
    3002,
    '201 E Chicago Ave Chicago, IL 60611',
    '312-220-1313'
);

INSERT INTO movies
VALUES(
    9001,
    'Taylor Swift: The Eras Tour',
    'PG-13',
    'AMC',
    3001
);

INSERT INTO movies
VALUES(
    9002,
    'Die Hard',
    'R',
    '20th Century Studios',
    3002
);

INSERT INTO concessions
VALUES(
    2001,
    'small popcorn'   
);

INSERT INTO concessions
VALUES(
    2002,
    'medium popcorn'
);

INSERT INTO concessions
VALUES(
    2003,
    'large popcorn'
);

INSERT INTO theater_concessions
VALUES(
    5001,
    7.75,
    3001,
    2001
);

INSERT INTO theater_concessions
VALUES(
    5002,
    9.25,
    3001,
    2002
);

INSERT INTO theater_concessions
VALUES(
    5003,
    11.75,
    3001,
    2003
);

INSERT INTO rewards
VALUES(
    100200301,
    500,
    1001
);

INSERT INTO rewards
VALUES(
    100200302,
    2500,
    1002
);

INSERT INTO ticket_orders
VALUES(
    6001,
    'Adult',
    12.75,
    2,
    25.50,
    9002,
    1001,
    100200301,
    3002
);

INSERT INTO ticket_orders
VALUES(
    6002,
    'Adult',
    12.75,
    2,
    25.50,
    9001,
    1002,
    100200302,
    3001
);