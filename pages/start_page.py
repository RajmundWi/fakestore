from playwright.sync_api import Page, Playwright, expect, sync_playwright
import pytest


class StartPage:
        
        def __init__(self, page: Page):
            self.page = page
            self.strona_glowna = page.locator("#menu-item-197").get_by_role("link", name="Strona główna")
            self.sklep = page.locator("#menu-item-198").get_by_role("link", name="Sklep")
            self.zamowienie = page.locator("#menu-item-199").get_by_role("link", name="Zamówienie")
            self.koszyk = page.locator("#menu-item-200").get_by_role("link", name="Koszyk")
            self.moje_konto = page.locator("#menu-item-201").get_by_role("link", name="Moje konto")
            self.windsurfing = page.get_by_role("link", name="Przejdź do kategorii produktu Windsurfing")
            self.wyszukaj = page.get_by_role("searchbox", name="Szukaj:")

        def click_strona_glowna(self):
            self.strona_glowna.click()

        def click_sklep(self):
            self.sklep.click()

        def click_zamowienie(self):
            self.zamowienie.click()

        def click_koszyk(self):
            self.koszyk.click()

        def click_moje_konto(self):
            self.moje_konto.click()

        def click_windsurfing(self):
            self.windsurfing.click()

        def click_wyszukaj(self):
            self.wyszukaj.click()
            

