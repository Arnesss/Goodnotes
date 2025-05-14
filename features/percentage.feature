Feature: Percentage Conversion

  Background:
    Given the calculator app is open

  Scenario: Convert numeric value to percentage
    When the user taps "<value>"
    And the user taps "%"
    And the user taps "="
    Then the result is "0.25"

  Scenario: Perform percentage calculation
    When the user taps "100"
    And the user taps "+"
    And the user taps "25"
    And the user taps "%"
    And the user taps "="
    Then the result is "125"