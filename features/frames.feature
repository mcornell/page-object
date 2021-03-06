Feature: Handling frames

  Scenario: Accessing elements within the frame
    Given I am on the frame elements page
    When I type "page-object" into the text field for frame 2 using "id"
    Then I should verify "page-object" is in the text field for frame 2 using "id"
    When I type "page-object" into the text field for frame 2 using "name"
    Then I should verify "page-object" is in the text field for frame 2 using "name"
    When I type "page-object" into the text field for frame 2 using "index"
    Then I should verify "page-object" is in the text field for frame 2 using "index"

  Scenario: Switching between frames
    Given I am on the frame elements page
    When I type "page-object" into the text field for frame 2 using "id"
    And I type "page-object" into the text field from frame 1 using "id"
    Then I should verify "page-object" is in the text field for frame 2 using "id"
    And I should verify "page-object" is in the text field for frame 1 using "id"

  Scenario: Accessing elements within the frame
    Given I am on the iframe elements page
    When I type "page-object" into the text field for frame 2 using "id"
    Then I should verify "page-object" is in the text field for frame 2 using "id"
    When I type "page-object" into the text field for frame 2 using "name"
    Then I should verify "page-object" is in the text field for frame 2 using "name"
    When I type "page-object" into the text field for frame 2 using "index"
    Then I should verify "page-object" is in the text field for frame 2 using "index"

  Scenario: Switching between frames
    Given I am on the iframe elements page
    When I type "page-object" into the text field for frame 2 using "id"
    And I type "page-object" into the text field from frame 1 using "id"
    Then I should verify "page-object" is in the text field for frame 2 using "id"
    And I should verify "page-object" is in the text field for frame 1 using "id"
    
  Scenario: Nested frames
    Given I am on the nested frame elements page
    Then I should be able to click the link in the frame
