public class HelloWorld {
    
    /**
     * Returns a simple greeting message
     * @param name The name to greet
     * @return A personalized greeting string
     */
    public static String getGreeting(String name) {
        if (String.isBlank(name)) {
            return 'Hello, World!';
        }
        return 'Hello, ' + name + '!';
    }
    
    /**
     * Returns the current date and time as a formatted string
     * @return Current datetime as a string
     */
    public static String getCurrentDateTime() {
        return DateTime.now().format('yyyy-MM-dd HH:mm:ss');
    }
    
    /**
     * Adds two numbers together
     * @param a First number
     * @param b Second number
     * @return Sum of a and b
     */
    public static Decimal add(Decimal a, Decimal b) {
        return a + b;
    }
}