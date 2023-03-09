*** Settings ***
Library     Browser


*** Test Cases ***
Example Test
    New Browser     headless=${False}
    New Page        https://playwright.dev
    Get Text    h1      ==      Playwright enables reliable end-to-end testing for modern web apps.