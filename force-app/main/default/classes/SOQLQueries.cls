public class SOQLQueries {
/*SELECT Id, Name, BillingAddress, Website, Phone FROM Account limit 200
 * select AccountId,Lastname from Contact limit 5
 * select fields(All) from opportunity limit 200
 * select Name,Email from Lead limit 200
 * select Casenumber from Case where CreatedDate=Last_N_days:30 limit 200
 * Select Name, Type from Account Where Type = 'Customer' limit 200
 * select Name,StageName from Opportunity where StageName != 'Closed Won' limit 200
 * select LastName, LeadSource From Lead where LeadSource ='Web' limit 200
 * SELECT Id, LastName, Email FROM Contact where Email !='' limit 200
 * Select id , Subject, ActivityDate from Task Where ActivityDate <= NEXT_N_DAYS:7 
 * SELECT Id, FiscalQuarter FROM Opportunity where FiscalQuarter = 4
 * select Count(Id) from opportunity
 * select MAX(Amount) from Opportunity
 * SELECT Id, OwnerId, CreatedById FROM Account 
 * select LeadSource from Lead where LeadSource = 'Web'
 * select Name from Account Order By Name Asc
 * select Id, Amount from Opportunity where Amount>50000
 * select Id,Status from Case where Status = 'New' Or Status = 'Open'
 * select Name,CreatedDate from Account Where CreatedDate = 2025-11-04T00:00:00Z
 * select id, LastModifiedDate from Contact where LastModifiedDate > LAST_N_DAYS:30
 * SELECT Id, CustomerPriority__c FROM Account where CustomerPriority__c = 'High'
 * SELECT Id, AccountId, CreatedById, OwnerId FROM Opportunity where OwnerId ='005dM00000PUsKkQAL' AND CreatedById='005dM00000PUsKkQAL'
 * SELECT Id,LastName from Lead Where Phone = '765456789'
 * 26
 * SELECT Id, CloseDate FROM Opportunity order by CloseDate Desc
 * SELECT Id, Email FROM Contact Where Email ='bholmes@goodmail.com'
 * 29 SELECT Id, Name, HasOpenActivity, HasOverdueTask FROM Opportunity where HasOpenActivity = true
 * SELECT Id, Name,(select Id from contacts where Name ='' ) FROM Account
 * SELECT Id, Name, LastModifiedDate FROM Opportunity where LastModifiedDate = Last_N_Days:7
 * 
 * 
 * SELECT Id, Name FROM Account OrderBy Name 
 * SELECT Id,StageName,(Select id,Name,Rating from Account where Rating = 'Hot') FROM Opportunity where StageName != 'Closed Won'
 * SELECT Id, Name, OwnerId, CreatedById FROM Account where OwnerId == CreatedById 
 * 
 * 
 * 
 * 
 * 
 * 31 - SELECT Id, Name, Type, CreatedDate FROM Opportunity where CreatedDate = Last_N_Days:7
 * 32 - SELECT Id, Name, BillingState FROM Account where BillingState = 'California'
 * 33 - SELECT Id, CaseNumber FROM Case where  CaseNumber  ='00001060'
 * 34 - SELECT Id, ConvertedContactId, Name FROM Lead
 * 35 - SELECT Id, Name, CloseDate FROM Opportunity where CloseDate = Next_N_Days:60
 * 36 - SELECT Id, Name, Industry FROM Account where Industry = 'Finance'
 * 37 - SELECT Id, AccountId, Name,Account.Name FROM Opportunity where Account.Name = 'New Relation Acc 6'
 * 38 - SELECT Id, Name, MailingCity FROM Contact where MailingCity like '%san%'
 * 39 - SELECT Id, Name, Email FROM Lead where Email like '%@blues.com'
 * 40 - SELECT Id, CreatedDate, LastModifiedById FROM Case where LastModifiedById = '005dM00000PUsKkQAL'
 * 41 - 
 * 42 - 
 * 43 - SELECT Id, Subject FROM Task where Subject like 'hi'
 * 44 - SELECT Id, Name, StageName, Amount FROM Opportunity where StageName ='Closed Won'AND Amount = 85000
 * 45 - SELECT Id, MailingStreet, Name FROM Contact where MailingStreet like '%Avenue%'
 * 46 - 
 * 47 - SELECT Id, Name, Company FROM Lead where Company = 'Tachyon'
 * 48 - SELECT Id, BillingCountry, Name FROM Account where BillingCountry like 'US'
 * 49 - SELECT Id, Probability, Name FROM Opportunity where Probability = 50O
 * 50 - SELECT Id, Name, LastName FROM Contact where LastName like 'Smith%'
 * 51 - SELECT Id, Status FROM Task where Status = 'In Progress'
 * 52 - SELECT Id, Origin, Type FROM Case where Origin like 'Phone'
 * 53 - SELECT Id, Amount, Name, CloseDate FROM Opportunity where Amount<10000 or CloseDate < toDay
 * 54 - SELECT Id, Name, Type, Industry FROM Account where Industry in ('Biotechnology', 'Energy')
 * 55 - SELECT Id, Name, Company, LeadSource, Status FROM Lead where Company = 'Tachyon' and LeadSource = null
 * 56 - SELECT Id, Name, Email FROM Contact where Email like '%@pentagon.com'
 * 57 - 
 * 58 - SELECT Id, CaseNumber, Priority FROM Case where Priority ='High'
 * 59 - SELECT Id, Name, BillingState FROM Account where BillingState != 'NY'
 * 60 - SELECT Id, OwnerId, WhatId, CreatedById FROM Task where WhatId In (select id from Opportunity where OwnerId= '005dM00000PUsKkQAL')
 * 61 - SELECT Id, LeadSource, Name FROM Contact where LeadSource = 'Web'
 * 62 - SELECT Id, Name, Phone, Email FROM Lead where Phone = '(620) 241-6200' and Email = 'a_young@dickenson.com'
 * 63 - 
 * 64 -
 * 65 - 
 * 66 - 
 * 67 - 
 * 68 - SELECT Id, Name, CreatedDate FROM Opportunity where CreatedDate >= Last_N_Months:3
 * 69 - 
 * 70 - SELECT Id, Name, ConvertedDate, CreatedDate FROM Lead where ConvertedDate = 2025-10-07 or CreatedDate  = 2025-10-07
 * 71 - SELECT Id, Name, DeliveryInstallationStatus__c FROM Opportunity where DeliveryInstallationStatus__c != 'Low'
 * 72 - SELECT Id, Name FROM Account WHERE Id NOT IN (SELECT AccountId FROM Opportunity)
 * 73 - SELECT Id, Name, MailingPostalCode FROM Contact where MailingPostalCode ='500085'
 * 74 - SELECT Id, Reason, IsClosed FROM Case where Reason = null 
 * 75 - SELECT Id, Name, Company FROM Lead where Company like '%inc%'
 * 76 - 
 * 77 - 
 * 78 - SELECT Id, WhatId FROM Task where WhatId In (SELECT Id, Name FROM Opportunity where CloseDate = '2020-10-10')
 * 79 - SELECT Id, Name, MailingCountry FROM Contact Where MailingCountry = 'India'
 * 80 - SELECT Id, Name, Type FROM Account Where Type != 'Prospect'
 * 81 - SELECT Id, Name, ConvertedAccountId, CreatedById FROM Lead where ConvertedAccountId = '' AND CreatedById = '005dM00000PUsKkQAL'
 * 82 - SELECT Id, ContactId,Contact.Name FROM Case where Contact.Name = 'Vickyy'
 * 83 - SELECT Id, Name, Amount, AccountId, Account.Name, Account.AnnualRevenue FROM Opportunity where Amount > ( SELECT AnnualRevenue FROM Account)
 * 84 - SELECT Id, Name, AccountId, LeadSource, Account.Name FROM Contact where LeadSource = 'Web' AND AccountId != null
 * 85 - SELECT Id, Name, AccountId FROM Contact where AccountId = null
 * 86 - SELECT Id, WhatId FROM Task where WhatId NOT IN (SELECT Id FROM Opportunity)
 * 87 - SELECT Id, Name, LeadSource, IsConverted FROM Lead where LeadSource = 'Web' AND IsConverted = False
 * 88 - 
 * 89 - SELECT Id, Priority, CreatedDate FROM Case where CreatedDate <= LAST_N_DAYS:30 AND Priority = 'High'
 * 90 - SELECT Id, Name, BillingState FROM Account where BillingState NOT IN ('CA','NY')
 * 91 - SELECT Id, Name, LeadSource, Status FROM Lead where Status = 'Open - Not Contacted' AND LeadSource = 'Web'
 * 92 - SELECT Id, Name, Email, LastModifiedDate FROM Contact where LastModifiedDate < LAST_N_DAYS:60 AND Email like '.gmail.com%'
 * 93 - SELECT Id, OwnerId, StageName FROM Opportunity where OwnerId != '005dM00000Q0eLyQAJ' AND StageName = 'Closed Won'
 * 94 = 78 
 * 95 - 
 * 96 - SELECT Id, Origin, Priority FROM Case where Origin = 'Phone' AND Priority = 'High'
 * 97 - SELECT Id, Name, MailingState, LeadSource FROM Contact where MailingState = 'tg' and LeadSource = 'Web'
 * 98 - SELECT Id, StageName, Amount FROM Opportunity where StageName != 'Closed Won' AND Amount > 100000
 * 99 - SELECT Id, Name, Company, LeadSource FROM Lead where Company = 'TNR Corp.' OR LeadSource = 'Web'
 * 100 - SELECT Id, Name, Type, Industry FROM Account where Type != '' OR Industry ='Energy'
 * 101 - SELECT Id, Name, Industry FROM Account where Industry Like 'Education%'
 * 102 - SELECT Id, FirstName, LastName, Email, Status FROM Lead where Status = 'Open - Not Contacted'
 * 103 - SELECT Id, Name, Industry FROM Account where Name like '%United%'
 * 104 - SELECT Count() FROM Opportunity
 * 105 - SELECT StageName,Count(Id) FROM Opportunity Group by StageName
 * 106 - SELECT Id, FirstName, LastName, CreatedDate FROM Lead where CreatedDate = THIS_Week
 * 107 - SELECT Id, Name, CreatedDate FROM Account order by CreatedDate Desc limit 10
 * 108 -  SELECT Id, Name, Industry FROM Account order by Industry, SELECT Status,count(Id) FROM Lead group by Status
 * 109 - SELECT Id, FirstName, LastName, AccountId, Account.Industry FROM Contact where Account.Industry != null
 * 
 * 
 * 
 * 
 * 
 * 
 *
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 *
















*/
}