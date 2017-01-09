-- TermTheme.scpt
-- Ken Hansen 02/2012
-- Sets theme of current terminal window/tab

-----------------------
-- Arguments
-----------------------
-- If a theme name is provided on the command line then set to that
-- Example
--   osascript TermTheme.scpt Grass
--  
-- If multiple theme names are provided on command line then choose randomly among those
--    This allows for random behavior from within blessed set
-- Example
--   osascript TermTheme.scpt Grass Basic Ocean "Red Sands"
--  
-- If no command line args are provided then choose randomly among all themes
-- Example
--   osascript TermTheme.scpt
-----------------------

-----------------------
-- This is best utilized via aliases set up in shell config file
-- Examples from my .bashrc
--   # Theme specific aliases
--   alias grass='osascript ~/sbin/TermTheme.scpt Grass'
--   alias basic='osascript ~/sbin/TermTheme.scpt Basic'
--   # Random from blessed themes
--   alias btheme='osascript ~/sbin/TermTheme.scpt Grass Basic Ocean "Red Sands"'
--   # Random themes
--   alias rtheme='osascript ~/sbin/TermTheme.scpt'
--
-- I also attach this to <alt><shift>T in FastScripts (http://www.red-sweater.com/fastscripts/)
-----------------------

on run argv
	tell application "Terminal"
		if (count argv) is 0 then
			-- Use random theme from all possible themes
			set newTheme to some settings set
			set current settings of selected tab of front window to newTheme
		else
			-- Use random theme from arguments 
			set newThemeName to some item of argv
			set current settings of selected tab of front window to first settings set whose name is newThemeName
		end if
	end tell
end run