Feature: I want render my template
  Scenario: define template with variables and render it
    Given defined template:
    """
    class MyTemplate < Templify::Base
      variable :foo
      variable :bar
    end
    """
    And I initialized template:
    """
    MyTemplate.new "Hello %{foo} %{bar} world"
    """
    When I render template with variables:
      | foo | bar       |
      | my  | beautiful |
    Then rendered template should be "Hello my beautiful world"