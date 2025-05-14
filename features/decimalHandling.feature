Feature: Decimal Input and Precision

  Background:
    Given the calculator app is open

  Scenario Outline: Perform arithmetic with decimal numbers
    When the user taps "<firstNumber>"
    And the user taps "<operator>"
    And the user taps "<secondNumber>"
    And the user taps "="
    Then the result is "<result>"

    Examples:
      | firstNumber | operator | secondNumber | result |
      | 2.5         | +        | 1.5          | 4.0    |
      | 5.5         | -        | 2.2          | 3.3    |
      | 3.0         | ×        | 0.5          | 1.5    |
      | 7.5         | ÷        | 2.5          | 3.0    |

  Scenario: Block multiple decimals in a single number
    When the user taps "6"
    And the user taps "."
    And the user taps "."
    And the user taps "3"
    Then the result is "6.3"

  Scenario: Long decimal result formatting
    When the user taps "10"
    And the user taps "÷"
    And the user taps "3"
    And the user taps "="
    Then the result is "3.33333333"

  Scenario: Accept decimal as first character
    When the user taps ".5"
    And the user taps "+"
    And the user taps ".5"
    And the user taps "="
    Then the result is "1"