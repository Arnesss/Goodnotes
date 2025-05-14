Feature: Copy Result to Clipboard

  Background:
    Given the calculator app is open

  Scenario: Copy calculated result to clipboard
    When the user taps "6"
    And the user taps "+"
    And the user taps "4"
    And the user taps "="
    And the user performs "Copy" action
    Then the clipboard has stored "10"

  Scenario: Paste a copied value
    And the user has copied "25" to the clipboard
    When the user performs "Paste" action
    Then the result is "25"

  Scenario: Cannot past non-numeric data
    And the user has copied "ABC" to the clipboard
    When the user performs "Paste" action
    # Result is 0 because pasting invalid data will not change the current result
    Then the result is "0"
