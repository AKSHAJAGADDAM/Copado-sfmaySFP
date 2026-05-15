@isTest
public class CalculatorServiceTest {

    @isTest
    static void testAddNumbers() {

        // Act
        Integer result = CalculatorService.addNumbers(10, 20);

        // Assert
        System.assertEquals(30, result);
    }

    @isTest
    static void testIsPositive_True() {

        // Act
        Boolean result = CalculatorService.isPositive(5);

        // Assert
        System.assertEquals(true, result);
    }

    @isTest
    static void testIsPositive_False() {

        // Act
        Boolean result = CalculatorService.isPositive(-2);

        // Assert
        System.assertEquals(false, result);
    }
}