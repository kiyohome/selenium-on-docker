import os
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from pyvirtualdisplay import Display
from time import sleep

display = Display(visible=0, size=(1280, 960))
display.start()

firefox_profile = webdriver.FirefoxProfile()
firefox_profile.set_preference("intl.accept_language", "ja-jp")
firefox_profile.update_preferences()
driver = webdriver.Firefox(log_path=os.path.devnull,
  firefox_profile=firefox_profile)

driver.get("https://www.google.co.jp/")

sleep(1)

filename = os.path.basename(__file__) + ".png"
driver.save_screenshot(filename)

driver.quit()
display.stop()
