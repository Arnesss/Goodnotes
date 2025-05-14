Feature: Sequential Operator Handling

  Background:
    Given the calculator app is open

  Scenario: Replace previously selected operator with a new one
    When the user taps "5"
    And the user taps "+"
    And the user taps "-"
    Then the "-" is displayed as active
    When the user taps "3"
    And the user taps "="
    Then the result is "2"

  Scenario: Press operator multiple times before second number
    When the user taps "5"
    And the user taps "+"
    And the user taps "+"
    And the user taps "+"
    And the user taps "3"
    And the user taps "="
    Then the result is "8"
