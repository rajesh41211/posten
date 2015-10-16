public with sharing class ContactController {

    @AuraEnabled
    public static List<Contact> findAll() {
        return [SELECT id, name, phone,Account.Name,Email FROM Contact order by name asc];
    }

    @AuraEnabled
    public static List<Contact> findByName(String searchKey) {
        String name = '%' + searchKey + '%';
        return [SELECT id, name, phone,Account.Name,Email FROM Contact WHERE name LIKE :name];
    }

    @AuraEnabled
    public static Contact findById(String contactId) {
        return [SELECT id, name, title, phone, mobilephone, Account.Name,Email FROM Contact WHERE Id = :contactId order by name asc];
    }

}