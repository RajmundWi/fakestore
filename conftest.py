import pytest
from playwright.sync_api import sync_playwright
from pages.start_page import StartPage

@pytest.fixture(scope="session")
def browser():
    """Launches a browser for the test session."""
    with sync_playwright() as p:
        browser = p.chromium.launch() # You can choose other browsers like firefox, webkit
        yield browser
        print("\nClosing browser...")
        browser.close()

@pytest.fixture
def page(browser):
    """Creates a new page for each test function."""
    page = browser.new_page()
    yield page
    print("\nClosing page...")
    page.close()
