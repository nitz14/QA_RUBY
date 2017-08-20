Feature: Visit Google

  @positive
  Scenario: Simple Google test
    When I navigate to "home" app "/" page
    Then I should be redirected to "home" app "/*" page
    And I should see "logo" element
    And I should see "search_input" element

  @positive
  Scenario Outline: Check translations working
    When I am using "<lang>" language version
    And I go to "<domain>" url
    Then I should see "Google" text

    Examples:
    | lang | domain                |
    | pl   | http://www.google.pl  |
    | en   | http://www.google.com |
