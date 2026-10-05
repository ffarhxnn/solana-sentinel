# Design canvas source

Source of the Robinhood-inspired redesign mockups (visual direction v2) that the team dashboard implements.
The artboards are versioned alongside the implementation.

- `*.dc.html` — one artboard each: Home (`Main`), Wallet, Alerts, Setup, SignIn, Mobile, Foundations
  (tokens, type, pills, buttons, inputs, chart rules), States (first run, loading, offline) and Logo
  (four mark options; option A, the great helm, is the one shipped).
- `canvas.json` — artboard layout on the canvas.
- `generate_boards.py`, `generate_logo.py` — scripts for regenerating the artboards in this directory.

All numbers, addresses and alerts in the mockups are sample values for layout only. The app renders only API
data. The artboards load `./support.js` from the design canvas runtime, so open them in the canvas rather
than directly in a browser.
