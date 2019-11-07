Feature: Create categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully create and edit categories
    Given I am on the new categories page
    When I fill in "category_name" with "Travel"
    And I fill in "category_keywords" with "Wander"
    And I fill in "category_permalink" with "TP"
    And I fill in "category_description" with "Places"
    And I press "Save"
    Then I should see "Travel"
    Then I should see "Wander"
    Then I should see "TP"
    Then I should see "Places"
    
    Then I follow "Travel"
    When I fill in "category_name" with "Travel1"
    And I fill in "category_keywords" with "Wander1"
    And I fill in "category_permalink" with "TP1"
    And I fill in "category_description" with "Places1"
    And I press "Save"
    Then I should see "Travel1"
    Then I should see "Wander1"
    Then I should see "TP1"
    Then I should see "Places1"
    