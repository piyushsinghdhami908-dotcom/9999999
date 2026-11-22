#!/bin/sh
# Mac / Linux launcher: opens the app in its own window (Chrome, Edge or Chromium)
DIR="$(cd "$(dirname "$0")" && pwd)"
APP="file://$DIR/app/index.html"
PROFILE="${HOME}/.manas-resume-maker"
for B in google-chrome google-chrome-stable chromium chromium-browser microsoft-edge; do
  if command -v "$B" >/dev/null 2>&1; then exec "$B" --app="$APP" --user-data-dir="$PROFILE" --window-size=1366,860 --no-first-run; fi
done
for A in "/Applications/Google Chrome.app" "/Applications/Microsoft Edge.app"; do
  if [ -d "$A" ]; then open -na "$A" --args --app="$APP" --user-data-dir="$PROFILE" --window-size=1366,860 --no-first-run; exit 0; fi
done
(xdg-open "$DIR/app/index.html" || open "$DIR/app/index.html") 2>/dev/null
