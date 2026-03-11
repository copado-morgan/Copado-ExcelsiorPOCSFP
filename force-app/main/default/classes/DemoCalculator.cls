/**
 * @description Simple calculator class for deployment demonstrations
 * @author Demo User
 * @date 2026-03-11
 */
public with sharing class DemoCalculator {
    
    /**
     * @description Adds two numbers together
     * @param a First number
     * @param b Second number
     * @return Sum of a and b
     */
    public static Decimal add(Decimal a, Decimal b) {
        return a + b;
    }
    
    /**
     * @description Subtracts second number from first
     * @param a First number
     * @param b Second number
     * @return Difference of a and b
     */
    public static Decimal subtract(Decimal a, Decimal b) {
        return a - b;
    }
    
    /**
     * @description Multiplies two numbers
     * @param a First number
     * @param b Second number
     * @return Product of a and b
     */
    public static Decimal multiply(Decimal a, Decimal b) {
        return a * b;
    }
    
    /**
     * @description Divides first number by second
     * @param a Numerator
     * @param b Denominator
     * @return Quotient of a and b
     * @throws IllegalArgumentException if b is zero
     */
    public static Decimal divide(Decimal a, Decimal b) {
        if (b == 0) {
            throw new IllegalArgumentException('Cannot divide by zero');
        }
        return a / b;
    }
    
    /**
     * @description Calculates percentage
     * @param value The value to calculate percentage of
     * @param percentage The percentage to calculate
     * @return Percentage value
     */
    public static Decimal calculatePercentage(Decimal value, Decimal percentage) {
        return (value * percentage) / 100;
    }
}