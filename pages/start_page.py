from playwright.sync_api import Page, Playwright, expect, sync_playwright
import pytest


class StartPage:
        
        def __init__(self, page: Page):
            self.page = page
        
        def get_strona_glowna(self):
            self.strona_glowna = self.page.locator("#menu-item-197").get_by_role("link", name="Strona główna")
            return self.strona_glowna

        def get_sklep(self):
            self.sklep = self.page.locator("#menu-item-198").get_by_role("link", name="Sklep")
            return self.sklep

        def get_zamowienie(self):
            self.zamowienie = self.page.locator("#menu-item-199").get_by_role("link", name="Zamówienie")
            return self.zamowienie

        def get_koszyk(self):
            self.koszyk = self.page.locator("#menu-item-200").get_by_role("link", name="Koszyk")
            return self.koszyk

        def get_moje_konto(self):
            self.moje_konto = self.page.locator("#menu-item-201").get_by_role("link", name="Moje konto")
            return self.moje_konto
        
        def get_windsurfing(self):
            self.windsurfing = self.page.get_by_role("link", name="Przejdź do kategorii produktu Windsurfing")
            return self.windsurfing

        def get_wyszukaj(self):
            self.wyszukaj = self.page.get_by_role("searchbox", name="Szukaj:")
            return self.wyszukaj

        def click_strona_glowna(self):
            self.get_strona_glowna().click()

        def click_sklep(self):
            self.get_sklep().click()

        def click_zamowienie(self):
            self.get_zamowienie().click()

        def click_koszyk(self):
            self.get_koszyk().click()

        def click_moje_konto(self):
            self.get_moje_konto().click()

        def click_windsurfing(self):
            self.get_windsurfing().click()

        def click_wyszukaj(self):
            self.get_wyszukaj().click()


