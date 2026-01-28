public with sharing class ContactDT 
{
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts() 
    {
        return [
            SELECT Id, Name, Email, MobilePhone, Account.Name
            FROM Contact where AccountId != null And MobilePhone != null
            ORDER BY LastModifiedDate DESC
            LIMIT 6
        ];
    }
}