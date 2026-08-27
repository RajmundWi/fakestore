[1mdiff --git a/pages/__pycache__/start_page.cpython-310.pyc b/pages/__pycache__/start_page.cpython-310.pyc[m
[1mindex be907e5..9423bd5 100644[m
Binary files a/pages/__pycache__/start_page.cpython-310.pyc and b/pages/__pycache__/start_page.cpython-310.pyc differ
[1mdiff --git a/pages/start_page.py b/pages/start_page.py[m
[1mindex a74c55b..27fd8b5 100644[m
[1m--- a/pages/start_page.py[m
[1m+++ b/pages/start_page.py[m
[36m@@ -12,7 +12,7 @@[m [mclass StartPage:[m
             self.koszyk = page.locator("#menu-item-200").get_by_role("link", name="Koszyk")[m
             self.moje_konto = page.locator("#menu-item-201").get_by_role("link", name="Moje konto")[m
             self.windsurfing = page.get_by_role("link", name="Przejdź do kategorii produktu Windsurfing")[m
[31m-           [m
[32m+[m[32m            self.wyszukaj = page.get_by_role("searchbox", name="Szukaj:")[m
 [m
         def click_strona_glowna(self):[m
             self.strona_glowna.click()[m
[36m@@ -31,8 +31,8 @@[m [mclass StartPage:[m
 [m
         def click_windsurfing(self):[m
             self.windsurfing.click()[m
[31m-        [m
[31m-[m
[31m-[m
 [m
[32m+[m[32m        def click_wyszukaj(self):[m
[32m+[m[32m            self.wyszukaj.click()[m
[32m+[m[41m            [m
 [m
[1mdiff --git a/pytest.ini b/pytest.ini[m
[1mindex 87c5ee9..010fd6d 100644[m
[1m--- a/pytest.ini[m
[1m+++ b/pytest.ini[m
[36m@@ -1,3 +1,3 @@[m
 [pytest][m
[31m---addopts = --headed --headless=false --browser=chromium --html=reports/report.html[m
[31m-testpaths = tests --slowmo=1000[m
\ No newline at end of file[m
[32m+[m[32maddopts = --headed  --browser=chromium --html=reports/report.html[m
[32m+[m[32mtestpaths = tests[m
[1mdiff --git a/tests/test_UI/__pycache__/test_start_page.cpython-310-pytest-9.0.3.pyc b/tests/test_UI/__pycache__/test_start_page.cpython-310-pytest-9.0.3.pyc[m
[1mindex f91d8e1..60a4edd 100644[m
Binary files a/tests/test_UI/__pycache__/test_start_page.cpython-310-pytest-9.0.3.pyc and b/tests/test_UI/__pycache__/test_start_page.cpython-310-pytest-9.0.3.pyc differ
[1mdiff --git a/tests/test_UI/reports/report.html b/tests/test_UI/reports/report.html[m
[1mindex 3de030f..385c7c6 100644[m
[1m--- a/tests/test_UI/reports/report.html[m
[1m+++ b/tests/test_UI/reports/report.html[m
[36m@@ -7,7 +7,7 @@[m
   </head>[m
   <body>[m
     <h1 id="title">report.html</h1>[m
[31m-    <p>Report generated on 18-May-2026 at 14:38:06 by <a href="https://pypi.python.org/pypi/pytest-html">pytest-html</a>[m
[32m+[m[32m    <p>Report generated on 28-May-2026 at 14:54:26 by <a href="https://pypi.python.org/pypi/pytest-html">pytest-html</a>[m
         v4.2.0</p>[m
     <div id="environment-header">[m
       <h2>Environment</h2>[m
[36m@@ -62,7 +62,7 @@[m
         <h2>Summary</h2>[m
         <div class="additional-summary prefix">[m
         </div>[m
[31m-        <p class="run-count">11 tests took 00:00:21.</p>[m
[32m+[m[32m        <p class="run-count">19 tests took 00:00:30.</p>[m
         <p class="filter">(Un)check the boxes to filter the results.</p>[m
         <div class="summary__reload">[m
           <div class="summary__reload__button hidden" onclick="location.reload()">[m
[36m@@ -72,10 +72,10 @@[m
         <div class="summary__spacer"></div>[m
         <div class="controls">[m
           <div class="filters">[m
[31m-            <input checked="true" class="filter" name="filter_checkbox" type="checkbox" data-test-result="failed" >[m
[31m-            <span class="failed">1 Failed,</span>[m
[32m+[m[32m            <input checked="true" class="filter" name="filter_checkbox" type="checkbox" data-test-result="failed" disabled>[m
[32m+[m[32m            <span class="failed">0 Failed,</span>[m
             <input checked="true" class="filter" name="filter_checkbox" type="checkbox" data-test-result="passed" >[m
[31m-            <span class="passed">10 Passed,</span>[m
[32m+[m[32m            <span class="passed">19 Passed,</span>[m
             <input checked="true" class="filter" name="filter_checkbox" type="checkbox" data-test-result="skipped" disabled>[m
             <span class="skipped">0 Skipped,</span>[m
             <input checked="true" class="filter" name="filter_checkbox" type="checkbox" data-test-result="xfailed" disabled>[m
[36m@@ -110,7 +110,7 @@[m
       </thead>[m
     </table>[m
   <footer>[m
[31m-    <div id="data-container" data-jsonblob="{&#34;environment&#34;: {&#34;Python&#34;: &#34;3.10.6&#34;, &#34;Platform&#34;: &#34;Windows-10-10.0.19045-SP0&#34;, &#34;Packages&#34;: {&#34;pytest&#34;: &#34;9.0.3&#34;, &#34;pluggy&#34;: &#34;1.6.0&#34;}, &#34;Plugins&#34;: {&#34;base-url&#34;: &#34;2.1.0&#34;, &#34;html&#34;: &#34;4.2.0&#34;, &#34;metadata&#34;: &#34;3.1.1&#34;, &#34;playwright&#34;: &#34;0.7.2&#34;}, &#34;Base URL&#34;: &#34;&#34;}, &#34;tests&#34;: {&#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[strona_glowna]&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[strona_glowna]&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[strona_glowna]&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[sklep]&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[sklep]&#34;, &#34;duration&#34;: &#34;00:00:01&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[sklep]&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:01&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[zamowienie]&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[zamowienie]&#34;, &#34;duration&#34;: &#34;00:00:01&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[zamowienie]&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:01&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[koszyk]&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[koszyk]&#34;, &#34;duration&#34;: &#34;00:00:01&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[koszyk]&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:01&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[moje_konto]&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[moje_konto]&#34;, &#34;duration&#34;: &#34;00:00:01&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[moje_konto]&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:01&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_click_zamowienie_button&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_click_zamowienie_button&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_click_zamowienie_button&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_click_koszyk_button&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_click_koszyk_button&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_click_koszyk_button&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_click_moje_konto_button&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_click_moje_konto_button&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_click_moje_konto_button&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_click_windsurfing_button&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_click_windsurfing_button&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_click_windsurfing_button&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_wyszukaj_button&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_wyszukaj_button&#34;, &#34;duration&#34;: &#34;00:00:01&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_wyszukaj_button&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:01&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_wyszukaj_windsurfing&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Failed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_wyszukaj_windsurfing&#34;, &#34;duration&#34;: &#34;00:00:07&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Failed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_wyszukaj_windsurfing&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:07&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;page = &amp;lt;Page url=&amp;#x27;https://fakestore.testelka.pl/?s=windsurfing&amp;amp;post_type=product&amp;#x27;&amp;gt;\n\n    def test_wyszukaj_windsurfing(page: Page):\n    \n        start_page = StartPage(page)\n        page.goto(&amp;quot;https://fakestore.testelka.pl/&amp;quot;)\n        start_page.click_wyszukaj()\n        start_page.wyszukaj.fill(&amp;quot;windsurfing&amp;quot;)\n        start_page.wyszukaj.press(&amp;quot;Enter&amp;quot;)\n&amp;gt;       expect(page).to_have_url(&amp;quot;https://fakestore&amp;quot;)\nE       AssertionError: Page URL expected to be &amp;#x27;https://fakestore&amp;#x27;\nE       Actual value: https://fakestore.testelka.pl/?s=windsurfing&amp;amp;post_type=product \nE       Call log:\nE         - Expect &amp;quot;to_have_url&amp;quot; with timeout 5000ms\nE           9 \u00d7 unexpected value &amp;quot;https://fakestore.testelka.pl/?s=windsurfing&amp;amp;post_type=product&amp;quot;\n\ntest_start_page.py:61: AssertionError\n--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n\nClosing browser...\n&#34;}]}, &#34;renderCollapsed&#34;: [&#34;passed&#34;], &#34;initialSort&#34;: &#34;result&#34;, &#34;title&#34;: &#34;report.html&#34;}"></div>[m
[32m+[m[32m    <div id="data-container" data-jsonblob="{&#34;environment&#34;: {&#34;Python&#34;: &#34;3.10.6&#34;, &#34;Platform&#34;: &#34;Windows-10-10.0.19045-SP0&#34;, &#34;Packages&#34;: {&#34;pytest&#34;: &#34;9.0.3&#34;, &#34;pluggy&#34;: &#34;1.6.0&#34;}, &#34;Plugins&#34;: {&#34;base-url&#34;: &#34;2.1.0&#34;, &#34;html&#34;: &#34;4.2.0&#34;, &#34;metadata&#34;: &#34;3.1.1&#34;, &#34;playwright&#34;: &#34;0.7.2&#34;}, &#34;Base URL&#34;: &#34;&#34;}, &#34;tests&#34;: {&#34;tests/test_UI/test_koszyk.py::test_pusty_koszyk&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_koszyk.py::test_pusty_koszyk&#34;, &#34;duration&#34;: &#34;00:00:03&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_koszyk.py::test_pusty_koszyk&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:03&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[strona_glowna]&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[strona_glowna]&#34;, &#34;duration&#34;: &#34;00:00:01&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[strona_glowna]&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:01&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[sklep]&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[sklep]&#34;, &#34;duration&#34;: &#34;993 ms&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[sklep]&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;993 ms&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[zamowienie]&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[zamowienie]&#34;, &#34;duration&#34;: &#34;00:00:01&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[zamowienie]&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:01&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[koszyk]&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[koszyk]&#34;, &#34;duration&#34;: &#34;00:00:01&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[koszyk]&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:01&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[moje_konto]&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[moje_konto]&#34;, &#34;duration&#34;: &#34;00:00:01&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_visibility_of_main_buttons[moje_konto]&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:01&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_click_zamowienie_button&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_click_zamowienie_button&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_click_zamowienie_button&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_click_koszyk_button&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_click_koszyk_button&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_click_koszyk_button&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_click_moje_konto_button&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_click_moje_konto_button&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_click_moje_konto_button&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_click_windsurfing_button&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_click_windsurfing_button&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_click_windsurfing_button&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_wyszukaj_button&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_wyszukaj_button&#34;, &#34;duration&#34;: &#34;00:00:01&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_wyszukaj_button&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:01&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_start_page.py::test_wyszukaj_windsurfing&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_start_page.py::test_wyszukaj_windsurfing&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_start_page.py::test_wyszukaj_windsurfing&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_windsurfing.py::test_click_egipt_button&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_windsurfing.py::test_click_egipt_button&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_windsurfing.py::test_click_egipt_button&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_windsurfing.py::test_add_egipt_to_cart&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_windsurfing.py::test_add_egipt_to_cart&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_windsurfing.py::test_add_egipt_to_cart&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_windsurfing.py::test_add_fuerteventura_to_cart&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_windsurfing.py::test_add_fuerteventura_to_cart&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_windsurfing.py::test_add_fuerteventura_to_cart&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_windsurfing.py::test_add_grecja_to_cart&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_windsurfing.py::test_add_grecja_to_cart&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_windsurfing.py::test_add_grecja_to_cart&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_windsurfing.py::test_add_karpathos_to_cart&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_windsurfing.py::test_add_karpathos_to_cart&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_windsurfing.py::test_add_karpathos_to_cart&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_windsurfing.py::test_add_lanzarote_to_cart&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_windsurfing.py::test_add_lanzarote_to_cart&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_windsurfing.py::test_add_lanzarote_to_cart&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n&#34;}], &#34;tests/test_UI/test_windsurfing.py::test_add_wyspy_to_cart&#34;: [{&#34;extras&#34;: [], &#34;result&#34;: &#34;Passed&#34;, &#34;testId&#34;: &#34;tests/test_UI/test_windsurfing.py::test_add_wyspy_to_cart&#34;, &#34;duration&#34;: &#34;00:00:02&#34;, &#34;resultsTableRow&#34;: [&#34;&lt;td class=\&#34;col-result\&#34;&gt;Passed&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-testId\&#34;&gt;tests/test_UI/test_windsurfing.py::test_add_wyspy_to_cart&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-duration\&#34;&gt;00:00:02&lt;/td&gt;&#34;, &#34;&lt;td class=\&#34;col-links\&#34;&gt;&lt;/td&gt;&#34;], &#34;log&#34;: &#34;No log output captured.--------------------------- Captured stdout teardown ---------------------------\n\nClosing page...\nClosing context...\n\nClosing browser...\n&#34;}]}, &#34;renderCollapsed&#34;: [&#34;passed&#34;], &#34;initialSort&#34;: &#34;result&#34;, &#34;title&#34;: &#34;report.html&#34;}"></div>[m
     <script>[m
       (function(){function r(e,n,t){function o(i,f){if(!n[i]){if(!e[i]){var c="function"==typeof require&&require;if(!f&&c)return c(i,!0);if(u)return u(i,!0);var a=new Error("Cannot find module '"+i+"'");throw a.code="MODULE_NOT_FOUND",a}var p=n[i]={exports:{}};e[i][0].call(p.exports,function(r){var n=e[i][1][r];return o(n||r)},p,p.exports,r,e,n,t)}return n[i].exports}for(var u="function"==typeof require&&require,i=0;i<t.length;i++)o(t[i]);return o}return r})()({1:[function(require,module,exports){[m
 const { getCollapsedCategory, setCollapsedIds } = require('./storage.js')[m
[1mdiff --git a/tests/test_UI/test_start_page.py b/tests/test_UI/test_start_page.py[m
[1mindex 2adcb72..1ff4625 100644[m
[1m--- a/tests/test_UI/test_start_page.py[m
[1m+++ b/tests/test_UI/test_start_page.py[m
[36m@@ -2,6 +2,10 @@[m [mfrom playwright.sync_api import Page, expect[m
 import pytest[m
 from pages.start_page import StartPage[m
 [m
[32m+[m[32m@pytest.fixture[m
[32m+[m[32mdef start_page(page: Page):[m
[32m+[m[32m    return StartPage(page)[m
[32m+[m
 @pytest.mark.parametrize("element_name", [[m
     "strona_glowna",[m
     "sklep",[m
[36m@@ -10,50 +14,44 @@[m [mfrom pages.start_page import StartPage[m
     "moje_konto",[m
 ])[m
 [m
[31m-def test_visibility_of_main_buttons(page: Page, element_name):[m
[31m-    start_page = StartPage(page)[m
[32m+[m[32mdef test_visibility_of_main_buttons(page: Page, element_name, start_page: StartPage):[m
[32m+[m[41m    [m
     page.goto("https://fakestore.testelka.pl/")[m
     element = getattr(start_page, element_name)[m
     assert element.is_visible() and element.is_enabled(), f"{element_name} is not visible or enabled on the page."[m
 [m
[31m-def test_click_zamowienie_button(page: Page):[m
[32m+[m[32mdef test_click_zamowienie_button(page: Page, start_page: StartPage):[m
     [m
[31m-    start_page = StartPage(page)[m
     page.goto("https://fakestore.testelka.pl/")[m
     start_page.click_zamowienie()[m
     expect(page).to_have_url("https://fakestore.testelka.pl/koszyk/")[m
 [m
[31m-def test_click_koszyk_button(page: Page):[m
[32m+[m[32mdef test_click_koszyk_button(page: Page, start_page: StartPage):[m
     [m
[31m-    start_page = StartPage(page)[m
     page.goto("https://fakestore.testelka.pl/")[m
     start_page.click_koszyk()[m
     expect(page).to_have_url("https://fakestore.testelka.pl/koszyk/")[m
 [m
[31m-def test_click_moje_konto_button(page: Page):[m
[32m+[m[32mdef test_click_moje_konto_button(page: Page, start_page: StartPage):[m
     [m
[31m-    start_page = StartPage(page)[m
     page.goto("https://fakestore.testelka.pl/")[m
     start_page.click_moje_konto()[m
     expect(page).to_have_url("https://fakestore.testelka.pl/moje-konto/")[m
 [m
[31m-def test_click_windsurfing_button(page: Page):[m
[32m+[m[32mdef test_click_windsurfing_button(page: Page, start_page: StartPage):[m
     [m
[31m-    start_page = StartPage(page)[m
     page.goto("https://fakestore.testelka.pl/")[m
     start_page.click_windsurfing()[m
     expect(page).to_have_url("https://fakestore.testelka.pl/product-category/windsurfing/")[m
 [m
[31m-def test_wyszukaj_button(page: Page):[m
[32m+[m[32mdef test_wyszukaj_button(page: Page, start_page: StartPage):[m
     [m
[31m-    start_page = StartPage(page)[m
     page.goto("https://fakestore.testelka.pl/")[m
     start_page.click_wyszukaj()[m
     expect(page.get_by_role("searchbox", name="Szukaj:")).to_be_focused()[m
 [m
[31m-def test_wyszukaj_windsurfing(page: Page):[m
[31m-    [m
[31m-    start_page = StartPage(page)[m
[32m+[m[32mdef test_wyszukaj_windsurfing(page: Page, start_page: StartPage):[m
[32m+[m
     page.goto("https://fakestore.testelka.pl/")[m
     start_page.click_wyszukaj()[m
     start_page.wyszukaj.fill("windsurfing")[m
[1mdiff --git a/tests/test_UI/test_windsurfing.py b/tests/test_UI/test_windsurfing.py[m
[1mindex f93fa8b..75ab6b6 100644[m
[1m--- a/tests/test_UI/test_windsurfing.py[m
[1m+++ b/tests/test_UI/test_windsurfing.py[m
[36m@@ -3,47 +3,50 @@[m [mimport pytest[m
 from pages.start_page import StartPage[m
 from pages.windsurfing import WindSurfing[m
 [m
[31m-def test_click_egipt_button(page: Page):[m
[32m+[m[32m@pytest.fixture[m
[32m+[m[32mdef windsurfing(page: Page):[m
[32m+[m[32m    return WindSurfing(page)[m
[32m+[m
[32m+[m[32mdef test_click_egipt_button(page: Page, windsurfing: WindSurfing):[m
     [m
     start_page = StartPage(page)[m
     page.goto("https://fakestore.testelka.pl/")[m
     start_page.click_windsurfing()[m
[31m-    start_page.click_egipt()[m
[32m+[m[32m    windsurfing.click_egipt()[m
     expect(page).to_have_url("https://fakestore.testelka.pl/product/egipt-el-gouna/")[m
 [m
[31m-def test_add_egipt_to_cart(page: Page):[m
[32m+[m[32mdef test_add_egipt_to_cart(page: Page, windsurfing: WindSurfing):[m
     [m
[31m-    windsurfing = WindSurfing(page)[m
     page.goto("https://fakestore.testelka.pl/product-category/windsurfing/")[m
     windsurfing.click_dodaj_egipt()[m
     expect(page.get_by_role("link", name="3 400,00 zł 1 Produkt ")).to_be_visible()[m
 [m
[31m-def test_add_fuerteventura_to_cart(page: Page):[m
[31m-    windsurfing = WindSurfing(page)[m
[32m+[m[32mdef test_add_fuerteventura_to_cart(page: Page, windsurfing: WindSurfing):[m
[32m+[m
     page.goto("https://fakestore.testelka.pl/product-category/windsurfing/")[m
     windsurfing.click_dodaj_fuerteventura()[m
     expect(page.get_by_role("link", name="3 600,00 zł 1 Produkt ")).to_be_visible()[m
 [m
[31m-def test_add_grecja_to_cart(page: Page):[m
[31m-    windsurfing = WindSurfing(page)[m
[32m+[m[32mdef test_add_grecja_to_cart(page: Page, windsurfing: WindSurfing):[m
[32m+[m
     page.goto("https://fakestore.testelka.pl/product-category/windsurfing/")[m
     windsurfing.click_dodaj_grecja()[m
     expect(page.get_by_role("link", name="3 200,00 zł 1 Produkt ")).to_be_visible()[m
 [m
[31m-def test_add_karpathos_to_cart(page: Page):[m
[31m-    windsurfing = WindSurfing(page)[m
[32m+[m[32mdef test_add_karpathos_to_cart(page: Page, windsurfing: WindSurfing):[m
[32m+[m
     page.goto("https://fakestore.testelka.pl/product-category/windsurfing/")[m
     windsurfing.click_dodaj_karpathos()[m
     expect(page.get_by_role("link", name="2 900,00 zł 1 Produkt ")).to_be_visible()[m
 [m
[31m-def test_add_lanzarote_to_cart(page: Page):[m
[31m-    windsurfing = WindSurfing(page)[m
[32m+[m[32mdef test_add_lanzarote_to_cart(page: Page, windsurfing: WindSurfing):[m
[32m+[m
     page.goto("https://fakestore.testelka.pl/product-category/windsurfing/")[m
     windsurfing.click_dodaj_lanzarote()[m
     expect(page.get_by_role("link", name="3 000,00 zł 1 Produkt ")).to_be_visible()[m
 [m
[31m-def test_add_wyspy_to_cart(page: Page):[m
[31m-    windsurfing = WindSurfing(page)[m
[32m+[m[32mdef test_add_wyspy_to_cart(page: Page, windsurfing: WindSurfing):[m
[32m+[m
     page.goto("https://fakestore.testelka.pl/product-category/windsurfing/")[m
     windsurfing.click_dodaj_wyspy()[m
     expect(page.get_by_role("link", name="5 399,00 zł 1 Produkt ")).to_be_visible()[m
\ No newline at end of file[m
