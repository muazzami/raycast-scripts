#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Go to WP Admin
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🔐

# Documentation:
# @raycast.description Go to /wp-admin/ for the current browser tab

tell application "System Events"
    set frontApp to name of first application process whose frontmost is true
end tell

if frontApp is "Safari" then
    tell application "Safari"
        set currentUrl to URL of front document
    end tell
else if frontApp is "Google Chrome" then
    tell application "Google Chrome"
        set currentUrl to URL of active tab of front window
    end tell
else if frontApp is "Brave Browser" then
    tell application "Brave Browser"
        set currentUrl to URL of active tab of front window
    end tell
else if frontApp is "Microsoft Edge" then
    tell application "Microsoft Edge"
        set currentUrl to URL of active tab of front window
    end tell
else if frontApp is "Arc" then
    tell application "Arc"
        set currentUrl to URL of active tab of front window
    end tell
else
    display dialog "Unsupported browser: " & frontApp
    return
end if

-- Extract scheme and domain
set text item delimiters to "/"
set urlParts to text items of currentUrl
set domainUrl to item 1 of urlParts & "//" & item 3 of urlParts

-- Append /wp-admin/
set adminUrl to domainUrl & "/wp-admin/"

-- Open the new URL in the same browser
if frontApp is "Safari" then
    tell application "Safari"
        set URL of front document to adminUrl
        activate
    end tell
else if frontApp is "Google Chrome" then
    tell application "Google Chrome"
        set URL of active tab of front window to adminUrl
        activate
    end tell
else if frontApp is "Brave Browser" then
    tell application "Brave Browser"
        set URL of active tab of front window to adminUrl
        activate
    end tell
else if frontApp is "Microsoft Edge" then
    tell application "Microsoft Edge"
        set URL of active tab of front window to adminUrl
        activate
    end tell
else if frontApp is "Arc" then
    tell application "Arc"
        open location adminUrl
        activate
    end tell
end if
