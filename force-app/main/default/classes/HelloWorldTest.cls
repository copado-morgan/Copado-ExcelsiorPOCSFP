@isTest
private class HelloWorldTest {
    
    @isTest
    static void testGetGreeting_WithName() {
        // Test with a valid name
        String result = HelloWorld.getGreeting('Morgan');
        System.assertEquals('Hello, Morgan!', result, 'Should return personalized greeting');
    }
    
    @isTest
    static void testGetGreeting_WithoutName() {
        // Test with null
        String result1 = HelloWorld.getGreeting(null);
        System.assertEquals('Hello, World!', result1, 'Should return default greeting for null');
        
        // Test with empty string
        String result2 = HelloWorld.getGreeting('');
        System.assertEquals('Hello, World!', result2, 'Should return default greeting for empty string');
        
        // Test with whitespace
        String result3 = HelloWorld.getGreeting('   ');
        System.assertEquals('Hello, World!', result3, 'Should return default greeting for whitespace');
    }
    
    @isTest
    static void testGetCurrentDateTime() {
        // Test that method returns a non-null string
        String result = HelloWorld.getCurrentDateTime();
        System.assertNotEquals(null, result, 'Should return a datetime string');
        System.assert(result.length() > 0, 'Datetime string should not be empty');
    }
    
    @isTest
    static void testAdd_PositiveNumbers() {
        Decimal result = HelloWorld.add(5, 3);
        System.assertEquals(8, result, 'Should correctly add positive numbers');
    }
    
    @isTest
    static void testAdd_NegativeNumbers() {
        Decimal result = HelloWorld.add(-5, -3);
        System.assertEquals(-8, result, 'Should correctly add negative numbers');
    }
    
    @isTest
    static void testAdd_MixedNumbers() {
        Decimal result = HelloWorld.add(10, -3);
        System.assertEquals(7, result, 'Should correctly add mixed positive and negative numbers');
    }
    
    @isTest
    static void testAdd_Decimals() {
        Decimal result = HelloWorld.add(5.5, 2.3);
        System.assertEquals(7.8, result, 'Should correctly add decimal numbers');
    }
}