CREATE TABLE flight(
    Origin Varchar(5),
    Destination Varchar(5),
    Cost Int,
    PRIMARY KEY (Origin, Destination) 
);