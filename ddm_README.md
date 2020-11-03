===============================================
Dell Display Manager
===============================================

Command language
-----------------------------------
A rich and flexible command language is supported via the
command-line, and command-line arguments can be combined.
Where appropriate, a specific display can be targeted by
prefacing the command with the display number, e.g.,
"2:AutoSetup"; if a display number is not specified the
command will be applied to the current selected display
or to all displays, as appropriate. Commands include:
 
SetActiveInput [DVI2/HDMI/DP2,etc] - switches active input
SetControl X Y - sets hex control X to hex value Y
IncControl X Y - increases the value of control X by Y
DecControl X Y - decreases the value of control X by Y
RestoreFactoryDefaults - restores factory defaults*
AutoSetup - executes an autosetup (analog only)*
RestoreLevelDefaults - restores level defaults*
RestoreColorDefaults - restores color defaults*
SetBrightnessLevel X - sets brightness to X% (0-100)*
SetContrastLevel X - sets contrast to X% (0-100)*
SetNamedPreset [Movie/CAL1,etc] - changes the Preset mode*
SetPowerMode [on/off] - sets the display power mode*
SetOptimalResolution - switches to optimal resolution
SaveProfile [Name] - save VCP(s) to named profile*
RestoreProfile [Name] - restore VCP(s) from named profile*
DeleteProfile [Name] - delete named profile
SetGridType [X] - changes Easy Arrange grid type to X
Rescan - rescans display hardware
Exit - terminates the program
 
Some of these commands require familiarity with the MCCS
standard. For example, the command to switch the OSD
language to Spanish would be "SetControl CC 0A"; to unlock
an OSD that has been inadvertently locked "SetControl CA 02".
 
Instructions can be combined on the command-line, and
assigned to standard Windows shortcuts with optional hotkeys.
For example:
 
  "ddm.exe /RestoreLevelDefaults /2:SetContrastLevel 70"
 
would first restore level defaults on all monitors, and then
set the contrast level on monitor #2 to 70%.
 
NB: If not targeted to a specific monitor, commands listed
above that are tagged with an asterisk (*) apply to all
monitors to facilitate simple and uniform control over all
members of a multimonitor matrix. For instance, if executed
on a matrix of 16 identical monitors, the command-line:
 
  "ddm.exe /SetNamedPreset Warm /SetBrightnessLevel 75"
 
would set all 16 monitors to Warm preset mode, with a
brightness level of 75%.