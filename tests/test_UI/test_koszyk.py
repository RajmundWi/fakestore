from playwright.sync_api import Page, expect
import pytest
from conftest import page
from pages.koszyk import Koszyk

@pytest.fixture
def koszyk(page: Page):
    return Koszyk(page)

def test_pusty_koszyk(page: Page, koszyk: Koszyk):

    page.goto("https://fakestore.testelka.pl/koszyk/")
    expect(koszyk.get_pusty_koszyk()).to_be_visible()

def test_windsurfing_link(page: Page, koszyk: Koszyk):

    page.goto("https://fakestore.testelka.pl/koszyk/")
    expect(koszyk.get_windsurfing()).to_be_visible()

def test_wspinaczka_link(page: Page, koszyk: Koszyk):

    page.goto("https://fakestore.testelka.pl/koszyk/")
    expect(koszyk.get_wspinaczka()).to_be_visible()

def test_wroć_do_sklepu_link(page: Page, koszyk: Koszyk):

    page.goto("https://fakestore.testelka.pl/koszyk/")
    expect(koszyk.get_wroć_do_sklepu()).to_be_visible()

def test_wroć_do_sklepu_click(page: Page, koszyk: Koszyk):

    page.goto("https://fakestore.testelka.pl/koszyk/")
    koszyk.get_wroć_do_sklepu().click()
    expect(page).to_have_url("https://fakestore.testelka.pl/shop/")

def test_windsurfing_click(page: Page, koszyk: Koszyk):

    page.goto("https://fakestore.testelka.pl/koszyk/")
    koszyk.get_windsurfing().click()
    expect(page).to_have_url("https://fakestore.testelka.pl/product-category/windsurfing/")

def test_wspinaczka_click(page: Page, koszyk: Koszyk):

    page.goto("https://fakestore.testelka.pl/koszyk/")
    koszyk.get_wspinaczka().click()
    expect(page).to_have_url("https://fakestore.testelka.pl/product-category/wspinaczka/")



