$groups = Get-DistributionGroup * | 
Where {[String]$_.Name -Match "GRGBes*" -or [String]$_.Name -Match "GrGNB*"}
Foreach($group In $groups){
 try{   
        $Gr = $group.name
        Set-DistributionGroup $Gr -HiddenFromAddressListsEnabled $true -ErrorAction Stop
        "$Gr,Ocultado" | Out-File c:\temp\groupsclosed2.txt -Append

    }
 catch [System.Exception] {
 "$Gr,Cerrado" | Out-File c:\temp\groupsclosed2.txt -Append
 Write-Host "Cerrado"
 }
}


// The script obtain all distribution groups, also The script export the result on a txt file.
    
        
    
   






