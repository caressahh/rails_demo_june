Feature: Comments can be left on an existing article
  As a visitor,
  when I visit the application's landing page,
  I would like to see a list of articles and be able to leave comments on these articles.

  Background:
    Given the following articles exist
      | title                | content                          | author |
      | A breaking news item | Some really breaking action      | Thomas |
      | Learn Rails 5        | Build awesome rails applications | Amber  |

  Scenario: Leaving a comment on an existing article
    When I am on the landing page
    Then I should see a list of articles
    And I should see "Leave a comment"
    When I fill in "comment" with "This is my comment"
    And I click "Send" button
    Then I should see "Your comment has been posted"

