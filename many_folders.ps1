function New-Directory 
{
    Param
    (
        [Parameter(Mandatory = $true, Position = 0)] # Parametr obowiązkowy to ścieżka
        [string] $Path, # Ustawianie typu parametru na string
        [Parameter(Mandatory = $true, Position = 1)] # parametr obowiązkowy przyjmujący rozszerzenie do znalezienia
        [string] $Name, # Ustawianie typu parametru na string
        [Parameter(Mandatory = $true, Position = 0)] # Parametr obowiązkowy to ścieżka
        [string] $Number # Ustawianie typu parametru na string
    )
    $success=$false
    for ($i = 1; $i -le $Number; $i++) {
        $folderName = "$Path\$Name$i" # Tworzy nazwę folderu w formacie
        if(!(Test-Path $folderName))
        {
            New-Item -ItemType Directory -Path $folderName # Tworzy nowy folder o nazwie $folderName
            $success=$true
        }
    }
    if (!$success) {
        Write-Output ("Foldery o podanej nazwie juz istnieja") # Wypisanie aktualnego statnu
    }
}
New-Directory -Path D:\testy -Name "elo" -Number 6 # Uruchomienie funckji 