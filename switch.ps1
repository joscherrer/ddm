param([string] $State)

# 660X879Q0C5L: u3417w
#     Home: mDP1
#     Work: DP1
# 7MT0167B2YNL: u2415 droite
#     Home: mDP1
#     Work: DP1
# 7MT0167B2Y5L: u2415 gauche
#     Home: HDMI1
#     Work: HDMI2

# $bn = 20; & "C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe" /7MT0167B2Y5L:SetBrightnessLevel "$bn" /660X879Q0C5L:SetBrightnessLevel "$bn" /7MT0167B2YNL:SetBrightnessLevel "$bn"

if ($State -eq "work")
{
    & "C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe" /7MT0167B2Y5L:SetActiveInput "HDMI2" /660X879Q0C5L:SetActiveInput "mDP1" /7MT0167B2YNL:SetActiveInput "mDP1" # u2415 gauche
    # Start-Sleep -Milliseconds 8000
    # & "C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe" /660X879Q0C5L:SetActiveInput "mDP1" # u3417w
    # Start-Sleep -Milliseconds 8000
    # & "C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe" /7MT0167B2YNL:SetActiveInput "mDP1" # u2415 droite
} elseif ($State -eq "home")
{
    & "C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe" /7MT0167B2Y5L:SetActiveInput "HDMI1" /7MT0167B2YNL:SetActiveInput "DP1" /660X879Q0CNL:SetActiveInput "DP1" # u2415 gauche
    # Start-Sleep -Milliseconds 8000
    # & "C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe" /7MT0167B2YNL:SetActiveInput "DP1" # u2415 droite
    # Start-Sleep -Milliseconds 8000
    # & "C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe" /660X879Q0CNL:SetActiveInput "DP1" # u3417w
}
