param([string] $State)

# 660X879Q0C5L : u3417w
# 7MT0167B2YNL : u2415 droite

if ($State -eq "work") {
    # 7MT0167B2YNL : u2415 droite
    & "C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe" /7MT0167B2YNL:SetActiveInput "mDP1"
    Start-Sleep -Milliseconds 8000
    # 660X879Q0C5L : u3417w
    & "C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe" /660X879Q0C5L:SetActiveInput "mDP1"
} elseif ($State -eq "home") {
    & "C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe" /660X879Q0C5L:SetActiveInput "DP1"
    Start-Sleep -Milliseconds 8000
    & "C:\Program Files (x86)\Dell\Dell Display Manager\ddm.exe" /7MT0167B2YNL:SetActiveInput "DP1"
}
