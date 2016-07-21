# Aliases
new-item alias:vi -value vim
function be { bundle exec $args }

# Set default ruby to 2.1.8 as this is LCD for Puppet
uru 2.1.8-x64

# This prepends this path to RUBYLIB for requiring 'puppet'
$env:RUBYLIB='C:/Users/moses/development/puppet/lib'

# All for posh-git
if(Test-Path Function:\Prompt) {Rename-Item Function:\Prompt PrePoshGitPrompt -Force}

# Load posh-git example profile
. 'C:\tools\poshgit\dahlbyk-posh-git-5ed5c05\profile.example.ps1'

Rename-Item Function:\Prompt PoshGitPrompt -Force
function Prompt() {if(Test-Path Function:\PrePoshGitPrompt){++$global:poshScope; New-Item function:\script:Write-host -value "param([object] `$object, `$backgroundColor, `$foregroundColor, [switch] `$nonewline) " -Force | Out-Null;$private:p = PrePoshGitPrompt; if(--$global:poshScope -eq 0) {Remove-Item function:\Write-Host -Force}}PoshGitPrompt}

# Disable git file status
$GitPromptSettings.EnableFileStatus = $false
$GitPromptSettings.BeforeText = "("
$GitPromptSettings.AfterText = ")"

# Clear up the console
Clear-Host
