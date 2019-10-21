
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


create procedure InsertUserSP
	@UserName varchar(255),
	@EmailId varchar(255),
	@Password varchar(255),
	@Gender char(1),
	@OrganisationName varchar(255),
	@UserType char(1),
	@Status char(1),
	@DateOfBirth DATE,
	@RegistrationDate DATE,
	@Image varbinary(max)
as
begin
	begin try
		begin transaction;
			--insert into ImageTable
			
			insert into ImageTable([Image]) values(@Image);
			declare @ImageID int=SCOPE_IDENTITY();

			--insert into OrganisationTable
			
			insert into OrganisationTable(OrganisationName) values(@OrganisationName);
			declare @OrganisationID int=SCOPE_IDENTITY();

			--insert into UserDataTable
			insert into UserDataTable(UserName,Gender,OrganisationId,ImageId,DateOfBirth,RegistrationDate) values(@UserName,@Gender,@OrganisationID,@ImageID,@DateOfBirth,@RegistrationDate);
			declare @UserId int=SCOPE_IDENTITY();

			--insert into LoginTable
			insert into LoginTable(UserId,EmailId,UserType,[Password],[Status]) values(@UserId,@EmailId,@UserType,@Password,@Status);

		commit transaction;
	end try
	begin catch
		if @@TRANCOUNT>0
			ROLLBACK transaction;

		DECLARE @ErrorNumber INT = ERROR_NUMBER();  
		DECLARE @ErrorLine INT = ERROR_LINE();  
		DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
 
	    PRINT 'Actual error number: ' + CAST(@ErrorNumber AS VARCHAR(10));  
		PRINT 'Actual line number: ' + CAST(@ErrorLine AS VARCHAR(10)); 

		RAISERROR(@ErrorMessage,@ErrorNumber,@ErrorLine); 
   END CATCH  
END;  





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
DocumentTopicId int identity(1,1) not null,
DocumentId int foreign key references DocumentTable(DocumentId),
TopicId int foreign key references TopicTable(TopicId)
constraint PK_DocumentTopic Primary key(DocumentId,TopicId)
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





