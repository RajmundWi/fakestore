from playwright.sync_api import Page, Playwright, expect, sync_playwright
import pytest

class Koszyk:
        
        def __init__(self, page: Page):
            self.page = page

        def get_pusty_koszyk(self):
            return self.page.get_by_text("Twój koszyk jest pusty.")
        
        def get_windsurfing(self):
            return self.page.get_by_role("link", name="Windsurfing")
       
        def get_wspinaczka(self):    
            return self.page.get_by_role("link", name="Wspinaczka")
       
        def get_wroć_do_sklepu(self):    
            return self.page.get_by_role("link", name="Wróć do sklepu")

        def windsurfing_click(self):
            self.get_windsurfing.click()

        def wspinaczka_click(self):
            self.get_wspinaczka.click()

        def wroć_do_sklepu_click(self):
            self.get_wroć_do_sklepu.click()







   