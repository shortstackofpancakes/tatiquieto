<#

    Tools installation script

#>



# setup OneGet to use chocolatey

Get-PackageProvider -name chocolatey



# dev stuff

$chocoPackages = (

	"firefox",
  	"opera",
	"googlechrome",
  	"silverlight",
	"greenshot",
	"gimp",
	"7zip.install",
	"vlc",
	"notepadplusplus.install"

);



# install choco stuff

$chocoPackages | % { Find-Package -Source chocolatey $_ | Install-Package -Verbose -Confirm }
