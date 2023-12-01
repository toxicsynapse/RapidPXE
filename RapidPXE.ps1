 <#
    This is a powershell script that
    allows you to image many machines 
    using an ini configuration file.
 
 #>


# This is the main function where EVERYTHING happens for a reason
 function main
 {
    
    # This calls the LocatedModules function 
    LocatedModules

    

 }



 <#
    The LocatedModules function
    works for locating any libraries that are not imported
    and if not imports them.
 #>
 function LocatedModules
 {
    $MODULE = Get-Module -name SmbShare
    $MODULE1 = Get-Module -name VpnClient
    $Module2 = Get-Module -name PKI

    <#
        This is an array that will 
        be used in a loop to 
        check the local machine
        if these Powershell Modules
        are present in the environment
    #>
    $MODULELIST = @($MODULE, $MODULE1, $Module2)

    if ($MODULELIST -ne $false)
    {
        return
    }
    else
    {
        write-host "Importing Powershell Modules..."

        # Imports the Local powershell modules
        import-module -name SmbShare
        import-module -name VpnClient
        import-module -name PKI

        write-host "Double Checking Powershell Modules"
        
        
    }
 }


 main
