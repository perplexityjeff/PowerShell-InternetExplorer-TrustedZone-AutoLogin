function Enable-TrustedAutoLogin {

    #Declares
    $path = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2'

    $pathExists = Test-Path $path
    if ($pathExists)
    {
        #Set the new homepage
        Set-ItemProperty -Path $path -Name "1A00" -Value "00000000"
    }
}

function Disable-TrustedAutoLogin {

    #Declares
    $path = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2'

    $pathExists = Test-Path $path
    if ($pathExists)
    {
        #Set the new homepage
        Set-ItemProperty -Path $path -Name "1A00" -Value "131072"
    }
}