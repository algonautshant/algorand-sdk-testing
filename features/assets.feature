Feature: Assets
  Background:
    Given an algod client
    And a kmd client
    And wallet information

  Scenario Outline: Sending transactions
    Given default asset creation transaction with parameters "<note>"
    When I get the private key
    And I sign the transaction with the private key
    And I send the transaction
    Then the transaction should go through

    Examples:
      | note |
      | X4Bl4wQ9rCo= |
      | X4Bl4wQ9rCo= |