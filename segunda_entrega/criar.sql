PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Client
DROP TABLE IF EXISTS Client;

CREATE TABLE Client (
    clientID    BIGINT  PRIMARY KEY,
    firstName   TEXT    NOT NULL ON CONFLICT ABORT,
    lastName    TEXT    NOT NULL ON CONFLICT ABORT,
    email       TEXT    UNIQUE,
    phoneNumber TEXT    UNIQUE,
    password    TEXT    NOT NULL ON CONFLICT ABORT,    
    taxNumber   INT     UNIQUE
);

-- Reservation
DROP TABLE IF EXISTS Reservation;

CREATE TABLE Reservation (
    reservationID   BIGINT  PRIMARY KEY,
    creationDate    DATE    NOT NULL ON CONFLICT ABORT,
    finalPrice      REAL    NOT NULL ON CONFLICT ABORT CHECK (finalPrice >= 0) DEFAULT(0), --DERIVED -> Trigger para efetuar o cálculo do preço
    isPaid          BOOLEAN DEFAULT FALSE,
    client          BIGINT  REFERENCES Client ON DELETE SET NULL,
    complement      INT  REFERENCES Complement NOT NULL ON CONFLICT ABORT
);

-- Cancelling
DROP TABLE IF EXISTS Cancelling;
/*Possível trigger*/
CREATE TABLE Cancelling (
    reservation     BIGINT  PRIMARY KEY REFERENCES Reservation,
    client          BIGINT  REFERENCES  Client,
    cancelDate      DATE    NOT NULL ON CONFLICT ABORT,  --CHECK (date <= (select startDate from Stay)) -> TRIGGER
    cost            REAL    NOT NULL ON CONFLICT ABORT
);

-- Complement
DROP TABLE IF EXISTS Complement;

CREATE TABLE Complement (
    complementID    INT  PRIMARY KEY,
    type            TEXT   UNIQUE,
    extraCost       REAL    NOT NULL ON CONFLICT ABORT CHECK (extraCost >= 0) DEFAULT(0)
);

-- Stay
DROP TABLE IF EXISTS Stay;

CREATE TABLE Stay (
    reservation     BIGINT  PRIMARY KEY REFERENCES Reservation,
    startDate       DATE    NOT NULL ON CONFLICT ABORT,
    endDate         DATE    NOT NULL ON CONFLICT ABORT,

    CHECK (endDate > startDate)
);

-- Guest
DROP TABLE IF EXISTS Guest;

CREATE TABLE Guest (    
    guestID     BIGINT  NOT NULL ON CONFLICT ABORT,  --possível trigger: numero de guests permitido tem que ser menor que a capacidade dos quartos alocados à reserva - 1
    stay        BIGINT  REFERENCES Stay,
    firstName   TEXT    NOT NULL ON CONFLICT ABORT,
    lastName    TEXT    NOT NULL ON CONFLICT ABORT

    PRIMARY KEY (guestID, reservation)
);

-- Comment
DROP TABLE IF EXISTS Comment;

CREATE TABLE Comment (
    reservation     BIGINT  PRIMARY KEY REFERENCES reservation,
    date            DATE    NOT NULL ON CONFLICT ABORT,
    text            TEXT    NOT NULL ON CONFLICT ABORT,
    rating          INT     NOT NULL ON CONFLICT ABORT,

    CHECK (rating >= 0 AND rating <= 5)
);

-- Room
DROP TABLE IF EXISTS Room;

CREATE TABLE Room (
    roomNumber  TEXT        PRIMARY KEY,
    capacity    INT         NOT NULL ON CONFLICT ABORT,
    price       REAL        NOT NULL ON CONFLICT ABORT
);

-- RoomStay
DROP TABLE IF EXISTS RoomStay;

CREATE TABLE RoomStay (
    stay    BIGINT  REFERENCES Stay ON DELETE CASCADE,
    room    TEXT     REFERENCES Room,
    PRIMARY KEY (stay, room)
);

-- MeetingRoom
DROP TABLE IF EXISTS MeetingRoom;

CREATE TABLE MeetingRoom (
    roomNumber  INT PRIMARY KEY REFERENCES Room,
    description TEXT    NOT NULL ON CONFLICT ABORT
);

-- Bedroom
DROP TABLE IF EXISTS Bedroom;

CREATE TABLE Bedroom (
    roomNumber  INT PRIMARY KEY REFERENCES Room,
    bedroomType TEXT REFERENCES BedroomType
);

-- BedroomType
DROP TABLE IF EXISTS BedroomType;

CREATE TABLE BedroomType (
    typeName    TEXT PRIMARY KEY,
    description TEXT    NOT NULL ON CONFLICT ABORT
);

-- Photo
DROP TABLE IF EXISTS Photo;

CREATE TABLE Photo (
    photoID     BIGINT  PRIMARY KEY,
    date        DATE    NOT NULL ON CONFLICT ABORT,
    description TEXT    NOT NULL ON CONFLICT ABORT,
    photoPath   TEXT    NOT NULL ON CONFLICT ABORT,
    meetingRoom INT     REFERENCES  MeetingRoom,
    bedroom     INT     REFERENCES  Bedroom,
    client      BIGINT  REFERENCES  Client,   

    CHECK(meetingRoom=NULL AND bedroom=NULL AND Client<>NULL
        OR
        meetingRoom=NULL AND bedroom<>NULL AND Client=NULL
        OR
        meetingRoom<>NULL AND bedroom=NULL AND Client=NULL)
);

-- Feature
DROP TABLE IF EXISTS Feature;

CREATE TABLE Feature (
    featureID   BIGINT  PRIMARY KEY,
    featureName TEXT    NOT NULL ON CONFLICT ABORT
);


-- MeetingRoomFeature
DROP TABLE IF EXISTS MeetingRoomFeature;

CREATE TABLE MeetingRoomFeature (
    roomNumber  INT     REFERENCES MeetingRoom,
    featureID   BIGINT  REFERENCES Feature,
    PRIMARY KEY(roomNumber, featureID)
);

-- BedroomTypeFeature
DROP TABLE IF EXISTS BedroomTypeFeature;

CREATE TABLE BedroomTypeFeature (
    typeName    TEXT    REFERENCES BedroomType,
    featureID   BIGINT  REFERENCES Feature,
    PRIMARY KEY(typeName, featureID)
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
