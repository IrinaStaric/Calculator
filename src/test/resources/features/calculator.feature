Feature: Calculator App General Calculations

  Scenario: Perform basic calculations in portrait mode
    Given The Calculator app is installed and running in portrait mode
    When I open the app
    And I perform addition, subtraction, multiplication, and division operations with positive integers, decimals, and fractions
    Then the results should be accurate
    And the results should be displayed correctly

  Scenario:Perform an addition with decimals in portrait mode
    Given The Calculator app is installed and running in portrait mode.
    When  I open the app
    And I enter the decimals number 2.5.
    And I perform addition with another decimal, for example, 1.75.
    Then The app should support decimals
    And The calculated result should be accurate and displayed correctly as 4.25.

  Scenario: Perform calculation with algebraic signs in portrait mode
    Given The Calculator app is installed and running in portrait mode
    When I open the app
    And I enter a positive integer, for example, 15.
    And I perform addition with a negative integer, for example, -8.
    Then the result should be displayed as 7.
    And I perform subtraction with another positive integer, for example, 6.
    Then the result should be displayed as 1.
    And I perform multiplication with a negative decimal, for example, -3.75.
    Then the result should be displayed correctly.
    And I perform division with a positive fraction, for example, 3/4.
    Then the result should be accurate and displayed correctly.

  Scenario: Convert entered number to percentage in portrait mode
    Given The Calculator app is open in portrait mode
    When I enter a number 20
    And I convert the entered number to a percentage using the "%" button
    Then the program should accurately convert the entry to percentages

  Scenario: Copy and paste functionality in portrait mode
    Given The Calculator app is open in portrait mode
    When I enter a number 1,212
    And I copy the entered number
    And I paste the copied number into another program or field
    Then the copied number 1,212 should match the original entry

  Scenario: Paste functionality in portrait mode
    Given The Calculator app is open in portrait mode
    When I copy the number 1,212 from another application or field
    And I open the calculator app
    And I paste the copied number 1,212 or result into the calculator app
    Then the pasted number or result should be accurately recognized and displayed

  Scenario: Display selected operator in portrait mode
    Given The Calculator app is open in portrait mode.
    When I tap the addition (+) operator.
    Then the calculator should display the selected operator as addition.
    And I tap the multiplication (x) operator.
    Then the calculator should display the selected operator as multiplication.
    And I tap the subtraction (-) operator.
    Then the calculator should display the selected operator as subtraction.
    And I tap the division (÷) operator.
    Then the calculator should display the selected operator as division.

  Scenario: Clear entry while preserving memory in portrait mode
    When I perform a series of calculations.
      | Input | Operator | Input | Result |
      | 15    | +        | 8     | 23     |
      | 3     | x        | 4     | 12     |
      | 18    | ÷        | 3     | 6      |
    And I clear the current entry using the "C" button.
    Then the current entry should be cleared.
    And I enter a new value, for example, 30.
    And I perform addition with another value, for example, 12.
    And I want to preserve the previous entries.
    Then I clear the current entry and preserve memory using the "AC" button.
    Then the previous entries should remain in memory.
    And I want to clear both the current entry and memory.
    Then I use the "AC" button.
    Then the current entry and memory should be cleared.

  Scenario: Interact with the calculator rapidly in portrait mode
    Given The Calculator app is open in portrait mode
    When I rapidly perform a sequence of calculations:
      | Operation | Operand |
      | Addition  | 20      |
      | Subtraction | 7     |
      | Multiplication | 3  |
      | Division | 2         |
      | Addition  | 10       |
      | Subtraction | 3     |
    Then the user interface should remain responsive without lag or freezing

  Scenario: Attempt division by 0 in portrait mode
    Given The Calculator app is open in portrait mode
    When I attempt to perform a division with a dividend of 20 and a divisor of 0
    Then the app should display an "Error" message
    And the current entry and memory should remain unchanged
