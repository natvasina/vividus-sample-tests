Scenario: Open main page

Meta:
@proxy

When I open URL `https://www.epam.com/about` in new tab

When I scroll element located by `xpath(//a[@href="https://www.epam.com/content/dam/epam/free_library/EPAM_Corporate_Overview_Q3_october.pdf"])` into view

When I click on element located by `xpath(//a[@href="https://www.epam.com/content/dam/epam/free_library/EPAM_Corporate_Overview_Q3_october.pdf"])`

When I wait until HTTP GET request with URL pattern `.*EPAM_Corporate_Overview_Q3_october.pdf` exists in proxy log
