Feature: Positive and Negative Sign Toggle

  Background:
    Given the calculator app is open

  Scenario: Toggle positive and negative sign for a positive number
    When the user taps "5"
    And the user taps "+/-"
    Then the result is "-5"

  Scenario: Toggle positive and negative sign for a negative number
    When the user taps "-5"
    And the user taps "+/-"
    Then the result is "5"

  Scenario: Toggle sign and perform calculation
    When the user taps "5"
    And the user taps the "+/-" button
    And the user taps "+"
    And the user taps "3"
    And the user taps "="
    Then the result is "-2"