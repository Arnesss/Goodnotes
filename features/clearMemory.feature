Feature: Clear Memory

  Background:
    Given the calculator app is open

  Scenario: Clear current input with X
    When the user taps "7"
    And the user taps "+"
    And the user taps "2"
    And the user taps "X"
    Then the result is "7+"

  Scenario: Clear all input and memory with AC
    And the user taps "7"
    And the user taps "+"
    And the user taps "2"
    # We have to perform the operation in order to clear the memory
    And the user taps "="
    And the result is "9"
    When the user taps "AC"
    Then the result is "0"