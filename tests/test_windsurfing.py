from playwright.sync_api import Page, expect
import pytest
from pages.start_page import StartPage
from pages.windsurfing import WindSurfing

def test_click_egipt_button(page: Page):
    
    start_page = StartPage(page)
    page.goto("https://fakestore.testelka.pl/")
    start_page.click_windsurfing()
    start_page.click_egipt()
    expect(page).to_have_url("https://fakestore.testelka.pl/product/egipt-el-gouna/")

def test_add_egipt_to_cart(page: Page):
    
    windsurfing = WindSurfing(page)
    page.goto("https://fakestore.testelka.pl/product-category/windsurfing/")
    windsurfing.click_dodaj_egipt()
    expect(page.get_by_role("link", name="3 400,00 zł 1 Produkt ")).to_be_visible()

def test_add_fuerteventura_to_cart(page: Page):
    windsurfing = WindSurfing(page)
    page.goto("https://fakestore.testelka.pl/product-category/windsurfing/")
    windsurfing.click_dodaj_fuerteventura()
    expect(page.get_by_role("link", name="3 600,00 zł 1 Produkt ")).to_be_visible()

def test_add_grecja_to_cart(page: Page):
    windsurfing = WindSurfing(page)
    page.goto("https://fakestore.testelka.pl/product-category/windsurfing/")
    windsurfing.click_dodaj_grecja()
    expect(page.get_by_role("link", name="3 200,00 zł 1 Produkt ")).to_be_visible()

def test_add_karpathos_to_cart(page: Page):
    windsurfing = WindSurfing(page)
    page.goto("https://fakestore.testelka.pl/product-category/windsurfing/")
    windsurfing.click_dodaj_karpathos()
    expect(page.get_by_role("link", name="2 900,00 zł 1 Produkt ")).to_be_visible()

def test_add_lanzarote_to_cart(page: Page):
    windsurfing = WindSurfing(page)
    page.goto("https://fakestore.testelka.pl/product-category/windsurfing/")
    windsurfing.click_dodaj_lanzarote()
    expect(page.get_by_role("link", name="3 000,00 zł 1 Produkt ")).to_be_visible()

def test_add_wyspy_to_cart(page: Page):
    windsurfing = WindSurfing(page)
    page.goto("https://fakestore.testelka.pl/product-category/windsurfing/")
    windsurfing.click_dodaj_wyspy()
    expect(page.get_by_role("link", name="5 399,00 zł 1 Produkt ")).to_be_visible()