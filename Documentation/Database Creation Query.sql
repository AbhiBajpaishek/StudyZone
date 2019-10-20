
create table ImageTable(
ImageId int identity(1,1) primary key,
[Image] varbinary(max)
);


create table OrganisationTable(
OrganisationId int identity(1,1) primary key,
OrganisationName varchar(255),
);



create table UserDataTable(
UserId int identity(1,1) Primary Key,
UserName varchar(255),
Gender char(1),
OrganisationId int foreign key references OrganisationTable(OrganisationId),
DateOfBirth DATE,
ImageId int foreign key references ImageTable(ImageId),
RegistrationDate DATE,
);


create table LoginTable(
UserId int foreign key references UserDataTable(UserId),
EmailId varchar(255),
UserType char(1),
[Password] varchar(255),
[Status] char(1)
);



create table DocumentTable(
DocumentId int identity(1,1) primary key,
DocumentName varchar(255),
CreatedBy int foreign key references UserDataTable(UserId),
CreationDate DATE,
Downloads int
);


create table TopicTable(
TopicId int identity(1,1) primary key,
TopicName varchar(255)
);


create table DocumentTopicJunctionTable(
DocumentTopicId int identity(1,1) primary key,
DocumentId int foreign key references DocumentTable(DocumentId),
TopicId int foreign key references TopicTable(TopicId)
);


create table SubscriptionTable(
SubscriptionId int identity(1,1) primary key,
UserId int foreign key references UserDataTable(UserId),
TopicId int foreign key references TopicTable(TopicId),
SubscriptionDate DATE
);

create table FeedbackTable(
FeedbackId int identity(1,1) primary key,
UserId int foreign key references UserDataTable(UserId),
ReviewedBy int foreign key references UserDataTable(UserId),
FeedbackDate DATE 
);

