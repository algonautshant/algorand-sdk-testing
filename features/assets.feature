Feature: Assets
  Background:
    Given an algod client
    And a kmd client
    And wallet information

  Scenario Outline: Sending transactions
    Given default asset creation transaction with total issuance <total>
    When I get the private key
    And I sign the transaction with the private key
    And I send the transaction
    Then the transaction should go through

    Examples:
      | total |
      | 1 |
      | 1000 |