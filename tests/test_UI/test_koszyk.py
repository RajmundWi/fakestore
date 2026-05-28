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