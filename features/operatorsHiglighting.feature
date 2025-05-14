Feature: Operator Selection Visual Feedback

  Background:
    Given the calculator app is open

  Scenario Outline: Operator is visibly highlighted after selection
    When the user taps "5"
    And the user taps "<operator>"
    Then the "<operator>" is displayed as active

    Examples:
      | operator |
      | +        |
      | -        |
      | ×        |
      | ÷        |