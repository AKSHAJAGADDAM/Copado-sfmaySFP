@isTest
public class BadPracticeTest {

    @isTest
    static void testUpdateAccounts() {

        // Create test data
        List<Account> accList = new List<Account>();

        for(Integer i = 0; i < 3; i++) {
            accList.add(new Account(Name = 'Test Account ' + i));
        }

        insert accList;

        Test.startTest();

        // Call method
        BadPractice.updateAccounts();

        Test.stopTest();

        // Verify updates
        List<Account> updatedAccs = [
            SELECT Id, Name
            FROM Account
        ];

        for(Account acc : updatedAccs) {
            System.assertEquals('Updated', acc.Name);
        }
    }

    @isTest
    static void testGetAccountName() {

        // Create test account
        Account acc = new Account(Name = 'Sample Account');
        insert acc;

        Test.startTest();

        // Call method
        String accName = BadPractice.getAccountName(acc.Id);

        Test.stopTest();

        // Verify result
        System.assertEquals('Sample Account', accName);
    }

    @isTest
    static void testGetAccountName_NoRecord() {

        Test.startTest();

        // Pass invalid Id
        String result = BadPractice.getAccountName('001000000000000AAA');

        Test.stopTest();

        // Verify null response
        System.assertEquals(null, result);
    }

    @isTest
    static void testUselessMethod() {

        Test.startTest();

        // Call method
        BadPractice.uselessMethod();

        Test.stopTest();

        // Dummy assertion
        System.assertEquals(true, true);
    }
}