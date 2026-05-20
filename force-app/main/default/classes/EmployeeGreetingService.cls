public with sharing class EmployeeGreetingService {

    // Method to generate greeting message
    public static String getGreeting(String employeeName) {

        if(String.isBlank(employeeName)) {
            return 'Employee name cannot be empty';
        }

        return 'Welcome to Salesforce, ' + employeeName + '!';
    }
}