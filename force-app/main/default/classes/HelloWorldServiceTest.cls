@isTest
public class HelloWorldServiceTest {

    @isTest
    static void testGetGreeting() {

        // Call method
        String result = HelloWorldService.getGreeting();

        // Verify result
        System.assertEquals('Hello World', result);
    }

    @isTest
    static void testAddNumbers() {

        // Call method
        Integer sum = HelloWorldService.addNumbers(10, 20);

        // Verify result
        System.assertEquals(30, sum);
    }
}