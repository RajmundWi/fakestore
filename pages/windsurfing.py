from playwright.sync_api import Page, Playwright, expect, sync_playwright
import pytest


class WindSurfing:

    def __init__(self, page: Page):
        self.page = page

    def get_egipt(self):
        self.egipt = self.page.get_by_role("link", name="Egipt - El Gouna Egipt – El")
        return self.egipt

    def get_dodaj_egipt(self):
        self.dodaj_egipt = self.page.get_by_role("button", name="Dodaj do koszyka: „Egipt - El")
        return self.dodaj_egipt

    def get_dodaj_fuerteventura(self):
        self.dodaj_fuerteventura = self.page.get_by_role("button", name="Dodaj do koszyka: „Fuerteventura - Sotavento”")
        return self.dodaj_fuerteventura

    def get_dodaj_grecja(self):
        self.dodaj_grecja = self.page.get_by_role("button", name="Dodaj do koszyka: „Grecja -")
        return self.dodaj_grecja

    def get_dodaj_karpathos(self):
        self.dodaj_karpathos = self.page.get_by_role("button", name="Dodaj do koszyka: „Windsurfing w Karpathos”")
        return self.dodaj_karpathos

    def get_dodaj_lanzarote(self):
        self.dodaj_lanzarote = self.page.get_by_role("button", name="Dodaj do koszyka: „Windsurfing w Lanzarote (Costa Teguise)”")
        return self.dodaj_lanzarote

    def get_dodaj_wyspy(self):
        self.dodaj_wyspy = self.page.get_by_role("button", name="Dodaj do koszyka: „Wyspy")
        return self.dodaj_wyspy

    def click_egipt(self):
        self.get_egipt().click()

    def click_dodaj_egipt(self):
        self.get_dodaj_egipt().click()

    def is_egipt_added(self):
        return self.page.is_visible.get_by_role("link", name="3 400,00 zł 1 Produkt ")
    
    def click_dodaj_fuerteventura(self):
        self.get_dodaj_fuerteventura().click()
    
    def is_fuerteventura_added(self):
        return self.page.is_visible.get_by_role("link", name="3 600,00 zł 1 Produkt ")
    
    def click_dodaj_grecja(self):
        self.get_dodaj_grecja().click()

    def is_grecja_added(self):
        return self.page.is_visible.get_by_role("link", name="3 200,00 zł 1 Produkt ")

    def click_dodaj_karpathos(self):
        self.get_dodaj_karpathos().click()

    def is_karpathos_added(self):
        return self.page.is_visible.get_by_role("link", name="2 900,00 zł 1 Produkt ")

    def click_dodaj_lanzarote(self):
        self.get_dodaj_lanzarote().click()

    def is_lanzarote_added(self):
        return self.page.is_visible.get_by_role("link", name="3 000,00 zł 1 Produkt ")

    def click_dodaj_wyspy(self):
        self.get_dodaj_wyspy().click()
    
    def is_wyspy_added(self):
        return self.page.is_visible.get_by_role("link", name="5 399,00 zł 1 Produkt ")
