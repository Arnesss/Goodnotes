Feature: Chained Operations Behaviour

  Background:
    Given the calculator app is open

  Scenario: Repeated equals tap continues the last operation
    When the user taps "2"
    And the user taps "+"
    And the user taps "2"
    And the user taps "="
    Then the result is "4"
    When the user taps "="
    Then the result is "6"
    When the user taps "="
    Then the result is "8"

  Scenario: Chained operations without pressing equals until the end
    When the user taps "2"
    And the user taps "+"
    And the user taps "3"
    And the user taps "×"
    And the user taps "4"
    And the user taps "="
    Then the result is "14"
