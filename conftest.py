import pytest
from playwright.sync_api import sync_playwright
from pages.start_page import StartPage
import os

@pytest.fixture(scope="session")
def browser_launch():
    """Launches a browser for the test session."""
    with sync_playwright() as p:
        browser = p.chromium.launch()
        yield browser
        print("\nClosing browser...")
        browser.close()

@pytest.fixture
def page(browser_launch, request):
    """Creates a new page for each test function with optional tracing."""
    # Create context (needed for tracing)
    context = browser_launch.new_context()
    page = context.new_page()
    
    # Start tracing if --tracing flag is set
    if request.config.getoption("--tracing", None) == "on":
        os.makedirs("traces", exist_ok=True)
        trace_file = f"traces/{request.node.name}.zip"
        context.tracing.start(screenshots=True, snapshots=True, sources=True)
    
    yield page
    
    # Stop tracing and save if it was started
    if request.config.getoption("--tracing", None) == "on":
        context.tracing.stop(path=trace_file)
    
    print("\nClosing page...")
    page.close()
    print("Closing context...")
    context.close()
