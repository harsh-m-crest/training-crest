import pyautogui
import time
import random
import traceback

pyautogui.FAILSAFE = False

CYCLE_SECONDS = 600  # 10 minutes
LOG_FILE = "activity_errors.log"

def log_error(e):
    with open(LOG_FILE, "a") as f:
        f.write("\n" + "="*40 + "\n")
        f.write(time.strftime("%Y-%m-%d %H:%M:%S") + "\n")
        f.write(traceback.format_exc())

try:
    current_cycle_start = int(time.time() // CYCLE_SECONDS) * CYCLE_SECONDS

    active_ratio = random.uniform(0.75, 0.85)
    target_active_time = CYCLE_SECONDS * active_ratio
    active_time = 0

    while True:
        now = time.time()
        scycle_start = int(now // CYCLE_SECONDS) * CYCLE_SECONDS

        if cycle_start != current_cycle_start:
            current_cycle_start = cycle_start
            active_ratio = random.uniform(0.75, 0.85)
            target_active_time = CYCLE_SECONDS * active_ratio
            active_time = 0

        wait_time = random.uniform(2, 6)

        if active_time < target_active_time:
            pyautogui.press('ctrl')
            active_time += wait_time

        time.sleep(wait_time)

except Exception as e:
    log_error(e)
