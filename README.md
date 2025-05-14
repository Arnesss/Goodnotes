# QA Automation Test Suite – iOS Calculator App

## 📋 Overview
This repo contains a set of BDD feature files designed to validate the functionality and usability of iOS calculator application. The scenarios are structured to reflect real-world usage and edge cases across core calculator features.

## 🧪 Covered Features
- Basic arithmetic operations
- Chained operations behavior
- Clear entry vs. clear all (AC)
- Copy/paste result to clipboard
- Decimal handling and precision
- Operator selection highlighting (UI feedback)
- Percentage conversion
- Sign toggle (+/-)
- Sequential operations handling

## 🧱 Structure
- Each `.feature` file focuses on a single functional area and uses consistent step formatting.
- All the feature files have a background step that sets the initial state of the calculator app. The background step is as follows:
- The steps might appear very simple and straightforward, but they are designed to be reusable and can be combined in various ways to create complex scenarios.  


- All scenarios follow consistent step patterns such as:
- `Given the calculator app is open`
- `When the user taps "..."` (reflects mobile-first interaction, we cannot use `-5"` because it's two different buttons)
- `Then the result is "..."` or a visual condition is verified


## 📝 Notes
- All scenarios are designed for iOS devices running iOS 15 or newer.
- Portrait orientation is assumed for all cases.

## 👤 Author
Arnes Mehinovic  
Quality Guardian / Bug nemesis
