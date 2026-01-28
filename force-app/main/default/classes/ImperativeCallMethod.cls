/**
 * ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
 * Class Name      : ImperativeCallMethod
 * Author          : <Sailendra>
 * Created Date    : Jan 21, 2026
 * Last Modified By: <Sailendra>
 * Last Modified On: Jan 21, 2026
 * Description     : This class implements for......
 *  
 * Change History  :
 *  Date          │   Author     │   Change
 * ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
 *  Jan 21, 2026  │ <YourName>   │ Initial version
 * ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
 */
public with sharing class ImperativeCallMethod {

    @AuraEnabled
    public static List<Account> getAccounts(String keyword) {
        String searchkey = '%' + keyword + '%';

        return [
            SELECT Id, Name, Industry
            FROM Account
            WHERE Name LIKE :searchkey
        ];
    }
}