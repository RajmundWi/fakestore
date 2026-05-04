from playwright.sync_api import Page, expect
import pytest
from pages.start_page import StartPage

@pytest.mark.parametrize("element_name", [
    "strona_glowna",
    "sklep",
    "zamowienie",
    "koszyk",
    "moje_konto",
])

def test_visibility_of_main_buttons(page: Page, element_name):
    start_page = StartPage(page)
    page.goto("https://fakestore.testelka.pl/")
    element = getattr(start_page, element_name)
    assert element.is_visible() and element.is_enabled(), f"{element_name} is not visible or enabled on the page."

def test_click_zamowienie_button(page: Page):
    
    start_page = StartPage(page)
    page.goto("https://fakestore.testelka.pl/")
    start_page.click_zamowienie()
    expect(page).to_have_url("https://fakestore.testelka.pl/koszyk/")

def test_click_koszyk_button(page: Page):
    
    start_page = StartPage(page)
    page.goto("https://fakestore.testelka.pl/")
    start_page.click_koszyk()
    expect(page).to_have_url("https://fakestore.testelka.pl/koszyk/")

def test_click_moje_konto_button(page: Page):
    
    start_page = StartPage(page)
    page.goto("https://fakestore.testelka.pl/")
    start_page.click_moje_konto()
    expect(page).to_have_url("https://fakestore.testelka.pl/moje-konto/")

def test_click_windsurfing_button(page: Page):
    
    start_page = StartPage(page)
    page.goto("https://fakestore.testelka.pl/")
    start_page.click_windsurfing()
    expect(page).to_have_url("https://fakestore.testelka.pl/product-category/windsurfing/")

