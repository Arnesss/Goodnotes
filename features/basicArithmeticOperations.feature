Feature: Basic Arithmetic Operations

  Background:
    Given the calculator app is open

  Scenario Outline: Perform basic arithmetic operation - <operation>
    When the user taps "<firstNumber>"
    And the user taps "<operator>"
    And the user taps "<secondNumber>"
    And the user taps "="
    Then the result is "<result>"

    Examples:
      | operation      | firstNumber | operator | secondNumber | result |
      | Addition       | 5           | +        | 3            | 8      |
      | Subtraction    | 9           | -        | 6            | 3      |
      | Multiplication | 4           | ×        | 2            | 8      |
      | Division       | 10          | ÷        | 2            | 5      |

  Scenario: Division by zero
    # This step reuses the same definition as in the basic arithmetic outline
    When the user taps "8"
    And the user taps "÷"
    And the user taps "0"
    And the user taps "="
    Then the result is "Undefined"

