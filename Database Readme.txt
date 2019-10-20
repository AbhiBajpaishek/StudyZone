--------------------------------Database Planning for Study Zone--------------------------------------

Overview:-

StudyZone is a web application where users can register and login to access study related documents which are maintained by the admins.

@@ Here users can be students, professionals, etc.

@@ Admins are the Product Team Members like Content Creators, Developers, Designers, Testers, DBA, etc.

-------------------------------------------------------------------------------------------------------


StudyZone Database is used to store following details:
	
	* Login Credentials(Admin and User)
	* Users and Admin Details(Provided as one time registration info)
	* Subscriptions(Users can subscribe to content topics and relavant will be displayed to there timeline)
	* Documents Details(Ownership, creation date, downloads, etc.)
	* Topics Details(Topics are the title of interests of users)
	* Feedback (Users at times may want to address to the Product team)

----------------------------------------------------------------------------------------------------------

Database Design:-

   *********************
   * UserDataTable *
   *********************

   UserData Table is used for storing relevant data of users/admins. All this data is stored at registration time.
   This data will be used rarely hence credentails table has been separated as this table contains more data  which won't be access very often in one session.

	 - User Id (*Primary Key)    			 [int] {Auto Increment}
	 - UserName                              			 [varchar(50)]
	 - Gender    	             			 [char(1)]
	 - Organisation/College ID (Foreign Key)  	 [int]
	 - DOB					 [DATE]
	 - ImageId					 [int]
	 - Registration Date				 [DATE]
	 - Email Id				 [varchar(50)]
-------------------------------------------------------------------------------------------------------------------------
   *********************
   * OrganisationTable *
   *********************
  
   Description:
 	
      OrganisationTable stores organisations names with IDs.

    - OrganisationId 					[int] {Auto Increment}
    - OrganisationName				[varchar(50)]
-------------------------------------------------------------------------------------------------------------------------
 
   ****************
   * ImageTable *
   ****************
  
   Description:
 	
      ImageTable stores images of users with Image IDs.

    - ImageId	[int]{Auto increment}
    - Image	[varbinary(max)]
-------------------------------------------------------------------------------------------------------------------------



   **************
   * LoginTable *
   **************

   Description: 

	The Login Table is used for storing credentials, status and type of user/admins which can be used while logging in.
	User Id is Primary as each user will has its own unique user id and no two users can register on the same id.

	- UserId(*Primary Key)			[int] {Auto Increment}
	- Email Id					[varchar(50)]
	- User Type(Admin or User)			[char(1)]
	- Password				[varchar(50)]
	- Status (Active/Inactive)			[char(1)]

------------------------------------------------------------------------------------------------------------

   *****************
   * DocumentTable *
   *****************

   Description:

	Document table stores documents uploaded by Admin. 

	- DocumentId				[int] {Auto Increment}	 \*Primary*/
	- DocumentName				[varchar(50)]
	- CreatedBy				[int]			\*Foreign*/
	- CreationDate				[DATE]
	- Downloads				[int(max)]

------------------------------------------------------------------------------------------------------------
   
   **************
   * TopicTable *
   **************

   Description:
    
	TopicsTable stores data of Topics(Subjects subscribed by users). Topics are categories which users subscribe 
	to see documents related to their subscription.

	 - TopicId					[int] {Auto Increment}
	 - TopicName				[varchar(60)]
   
-------------------------------------------------------------------------------------------------------------------

   ******************************
   * DocumentTopicJunctionTable *
   ******************************

    Description:
	 
	DocumentTopicJunction table is created because of many 2 many relationship b/w Topics and 			Documents. Many documents may come under same Topic.
	 Many Topics may have same document.
	 This table has composite primary key(TopicId, DocumentId) 

	  - DocumentTopicId			[int]{Auto Increment}
	  - DocumentId				[int]{*Foreign Key}
	  - TopicId				[int]{*Foreign Key}

------------------------------------------------------------------------------------------------------------

   
   
   *********************
   * SubscriptionTable *
   *********************

   Description:

	Subscription Table is used to store details like the topics which users want to subsribe and see on their timelines. TOPICS is a category can many DOCUMENTS may fall under same TOPIC. 
	Ex: Computer Science is a TOPIC, Documents related to CS are all Documents which come under this category.
	* Each USER may have subscription to many TOPICS *
	* Each TOPIC may have been subscribed by many USERS *
	---Many to Many relationship----


	Coming back to Subscription table, it is used for storing the combination of UserId and TopicId.
	Working as junction table of Users and Topics.

	 - Subscription ID					[int] 
	 - UserId (Composite Primary Key)			[int]
	 - Topic Id (Composite Primary Key)			[int]
	 - SubscriptionDate					[DATE]

---------------------------------------------------------------------------------------------------------------

   *****************
   * FeedbackTable *
   *****************

   Description:

    Feedback table has feedbacks given by users.

	 - FeedbackId					[int]{Auto Increment}
	 - UserId						[int] {*Foreign Key}
	 - Reviewed By					[int] {*Foreign Key}
	 - Date						[DATE]

-----------------------------------------------------------------------------------------------------------

