import time
from playwright.sync_api import Page, expect
import pytest
from pages.start_page import StartPage
from pages.zamowienie import Zamowienie


@pytest.fixture
def start_page(page: Page):
    return StartPage(page)
@pytest.fixture
def zamowienie(page: Page):
    return Zamowienie(page)

def test_click_add_to_cart(page: Page, start_page: StartPage, zamowienie: Zamowienie):
    page.goto(start_page.startpage_url)
    start_page.add_to_cart()
    time.sleep(5)
    start_page.click_zamowienie()    
    kupuje_button = getattr(zamowienie, "get_kupuje_button")()
    assert kupuje_button.is_visible(), "Kupuję i płacę button is not visible on the page."