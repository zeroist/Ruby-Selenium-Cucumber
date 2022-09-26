Feature: googleHome


  Scenario: user can use google
    Given user is on google home page
    Then url is google.com
    And images ling is flashing

  Scenario : search Functioanlity
    Given user is on google home page
    Given user type for ali into search box

  Scenario Outline: search Functioanlity
    Given user is on google home page
    Given user type for "<search items>" into search box
    When user clicks to search button
    Then user see the search result
    Examples:
      | search items |
      | selenium     |
      | java         |
      | json         |
      | xml          |


