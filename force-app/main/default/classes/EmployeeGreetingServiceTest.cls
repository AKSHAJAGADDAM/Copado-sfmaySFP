@isTest
private class EmployeeGreetingServiceTest {

    @isTest
    static void testGetGreeting() {

        // Test data
        String employeeName = 'Alexa';

        // Call method
        String result = EmployeeGreetingService.getGreeting(employeeName);

        // Verify result
        System.assertEquals(
            'Welcome to Salesforce, Alexa!',
            result
        );
    }

    @isTest
    static void testGetGreetingWithBlankName() {

        // Call method with blank input
        String result = EmployeeGreetingService.getGreeting('');

        // Verify validation message
        System.assertEquals(
            'Employee name cannot be empty',
            result
        );
    }
}