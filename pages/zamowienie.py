from playwright.sync_api import Page, Playwright, expect, sync_playwright

class Zamowienie:
        
        def __init__(self, page: Page):
            self.page = page

        def get_kupuje_button(self):
            button = self.page.get_by_role("button", name="Kupuję i płacę")
            button.wait_for(state="visible", timeout=5000)  # Wait up to 5 seconds
            return button