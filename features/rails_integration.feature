Feature: I want to templify active record model attribute
  Scenario: add templify to active record model attribute
    Given defined template:
    """
    class MyTemplateForRails < Templify::Base
      variable :foo
      variable :bar
    end
    """
    When I extend model attribute with templify:
    """
    Post.templify :text, MyTemplateForRails
    """
    Then no errors should be raised

    When I build an instance of the "Post" class
    Then "text" attribute of this instance should be a template
    When I change "text" attribute of this instance to "foo"
    Then "text" attribute of this instance should be a template
    When I get "text" template of this instance
    And the following variables should be defined for this template:
      | name |
      | foo  |
      | bar  |