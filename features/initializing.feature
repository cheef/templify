Feature: I want to initialize defined template

  Scenario: initialize existing template with content
    Given defined template:
    """
    class MyTemplate < Templify::Base
    end
    """
    When I initialize template with content:
    """
    MyTemplate.new 'aa'
    """
    Then no errors should be raised