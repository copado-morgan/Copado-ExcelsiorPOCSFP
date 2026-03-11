/**
 * @description Test class for DemoCalculator
 * @author Demo User
 * @date 2026-03-11
 */
@isTest
private class DemoCalculatorTest {
    
    @isTest
    static void testAddition() {
        Test.startTest();
        Decimal result = DemoCalculator.add(10, 5);
        Test.stopTest();
        
        System.assertEquals(15, result, 'Addition should return correct sum');
    }
    
    @isTest
    static void testAdditionWithDecimals() {
        Test.startTest();
        Decimal result = DemoCalculator.add(10.5, 5.25);
        Test.stopTest();
        
        System.assertEquals(15.75, result, 'Addition with decimals should work correctly');
    }
    
    @isTest
    static void testSubtraction() {
        Test.startTest();
        Decimal result = DemoCalculator.subtract(10, 5);
        Test.stopTest();
        
        System.assertEquals(5, result, 'Subtraction should return correct difference');
    }
    
    @isTest
    static void testSubtractionNegativeResult() {
        Test.startTest();
        Decimal result = DemoCalculator.subtract(5, 10);
        Test.stopTest();
        
        System.assertEquals(-5, result, 'Subtraction should handle negative results');
    }
    
    @isTest
    static void testMultiplication() {
        Test.startTest();
        Decimal result = DemoCalculator.multiply(10, 5);
        Test.stopTest();
        
        System.assertEquals(50, result, 'Multiplication should return correct product');
    }
    
    @isTest
    static void testMultiplicationByZero() {
        Test.startTest();
        Decimal result = DemoCalculator.multiply(10, 0);
        Test.stopTest();
        
        System.assertEquals(0, result, 'Multiplication by zero should return zero');
    }
    
    @isTest
    static void testDivision() {
        Test.startTest();
        Decimal result = DemoCalculator.divide(10, 5);
        Test.stopTest();
        
        System.assertEquals(2, result, 'Division should return correct quotient');
    }
    
    @isTest
    static void testDivisionWithDecimals() {
        Test.startTest();
        Decimal result = DemoCalculator.divide(10, 4);
        Test.stopTest();
        
        System.assertEquals(2.5, result, 'Division should handle decimal results');
    }
    
    @isTest
    static void testDivisionByZero() {
        Test.startTest();
        Boolean exceptionThrown = false;
        try {
            DemoCalculator.divide(10, 0);
        } catch (IllegalArgumentException e) {
            exceptionThrown = true;
            System.assert(e.getMessage().contains('Cannot divide by zero'), 
                         'Exception message should indicate division by zero');
        }
        Test.stopTest();
        
        System.assert(exceptionThrown, 'Division by zero should throw exception');
    }
    
    @isTest
    static void testCalculatePercentage() {
        Test.startTest();
        Decimal result = DemoCalculator.calculatePercentage(200, 15);
        Test.stopTest();
        
        System.assertEquals(30, result, '15% of 200 should be 30');
    }
    
    @isTest
    static void testCalculatePercentageZero() {
        Test.startTest();
        Decimal result = DemoCalculator.calculatePercentage(100, 0);
        Test.stopTest();
        
        System.assertEquals(0, result, '0% of any value should be 0');
    }
    
    @isTest
    static void testCalculatePercentageOver100() {
        Test.startTest();
        Decimal result = DemoCalculator.calculatePercentage(50, 200);
        Test.stopTest();
        
        System.assertEquals(100, result, '200% of 50 should be 100');
    }
}