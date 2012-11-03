Feature: I want to define my template and describe what variables it should have

  Scenario: define template without variables
    When I define empty template like below:
    """
    class MyTemplate < Templify::Base
    end
    """
    Then no errors should be raised
    And "MyTemplate" template should have 0 variables

  Scenario: define template with several variables
    When I define template like below:
    """
    class MyTemplate < Templify::Base
      desc %(This is first variable of my template)
      variable :foo

      desc %(This is special variable of my template)
      variable :bar

      variable :test
    end
    """
    Then no errors should be raised
    And "MyTemplate" template should have 3 variables