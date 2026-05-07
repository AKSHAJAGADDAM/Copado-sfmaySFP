public class BadPractice {

    public static void updateAccounts() {

        List<Account> accs = [SELECT Id, Name FROM Account];

        for(Account a : accs) {

            a.Name = 'Updated';

            update a;
        }
    }

    public static String getAccountName(Id accId) {

        String query = 'SELECT Id, Name FROM Account WHERE Id = \'' + accId + '\'';

        List<Account> accList = Database.query(query);

        if(accList.size() > 0) {
            return accList[0].Name;
        }

        return null;
    }

    public static void uselessMethod() {

        Integer x = 0;

        if(x == 0) {
            System.debug('Zero');
        }
        else {
            System.debug('Not Zero');
        }
    }
}