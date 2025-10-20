<##############################################################################
Part of PowerShell module : GenXdev.Queries
Original cmdlet filename  : Open-AllPossibleQueries.ps1
Original author           : René Vaessen / GenXdev
Version                   : 1.302.2025
################################################################################
Copyright (c)  René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>
# Don't remove this line [dontrefactor]

###############################################################################
<#
.SYNOPSIS
Opens all possible query types for given search terms or URLs.

.DESCRIPTION
Executes all cmdlets that handle webpage queries, processing both URLs and search
terms. For URLs, it performs site-specific queries, and for search terms it
executes general web queries. This function dynamically discovers and executes
all available query cmdlets from the GenXdev.Queries module family.

.PARAMETER Queries
The search terms or URLs to query. Can be provided as strings or URLs.

.PARAMETER Language
The language of the returned search results.

.PARAMETER Private
Opens in incognito/private browsing mode.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed.

.PARAMETER Edge
Opens in Microsoft Edge.

.PARAMETER Chrome
Opens in Google Chrome.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default
browser is.

.PARAMETER Firefox
Opens in Firefox.

.PARAMETER All
Opens in all registered modern browsers.

.PARAMETER Monitor
The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary
monitor, defaults to -1, no positioning.

.PARAMETER FullScreen
Opens in fullscreen mode.

.PARAMETER Width
The initial width of the webbrowser window.

.PARAMETER Height
The initial height of the webbrowser window.

.PARAMETER X
The initial X position of the webbrowser window.

.PARAMETER Y
The initial Y position of the webbrowser window.

.PARAMETER Left
Place browser window on the left side of the screen.

.PARAMETER Right
Place browser window on the right side of the screen.

.PARAMETER Top
Place browser window on the top side of the screen.

.PARAMETER Bottom
Place browser window on the bottom side of the screen.

.PARAMETER Centered
Place browser window in the center of the screen.

.PARAMETER ApplicationMode
Hide the browser controls.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions.

.PARAMETER DisablePopupBlocker
Disable the popup blocker.

.PARAMETER AcceptLang
Set the browser accept-lang http header.

.PARAMETER KeysToSend
Keystrokes to send to the Browser window, see documentation for cmdlet
GenXdev.Windows\Send-Key.

.PARAMETER FocusWindow
Focus the browser window after opening.

.PARAMETER SetForeground
Set the browser window to foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restore PowerShell window focus.

.PARAMETER NewWindow
Don't re-use existing browser window, instead, create a new one.

.PARAMETER PassThru
Returns a [System.Diagnostics.Process] object of the browserprocess.

.PARAMETER ReturnURL
Don't open webbrowser, just return the url.

.PARAMETER ReturnOnlyURL
After opening webbrowser, return the url.

.PARAMETER SendKeyEscape
Escape control characters when sending keys.

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keys.

.PARAMETER SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.EXAMPLE
Open-AllPossibleQueries -Queries "powershell scripting" -Monitor 0

Opens all possible query types for "powershell scripting" on the default monitor.

.EXAMPLE
qq "https://github.com" -m -1

Opens all possible query types for the GitHub URL using alias and short parameters.
#>
###############################################################################
function Open-AllPossibleQueries {

    [CmdletBinding()]
    [Alias('qq')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]

    param(
        ########################################################################
        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromRemainingArguments = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The query to execute.'
        )]
        [string[]] $Queries,
        ###############################################################################
        [ValidateSet(
            'Afrikaans',
            'Akan',
            'Albanian',
            'Amharic',
            'Arabic',
            'Armenian',
            'Azerbaijani',
            'Basque',
            'Belarusian',
            'Bemba',
            'Bengali',
            'Bihari',
            'Bork, bork, bork!',
            'Bosnian',
            'Breton',
            'Bulgarian',
            'Cambodian',
            'Catalan',
            'Cherokee',
            'Chichewa',
            'Chinese (Simplified)',
            'Chinese (Traditional)',
            'Corsican',
            'Croatian',
            'Czech',
            'Danish',
            'Dutch',
            'Elmer Fudd',
            'English',
            'Esperanto',
            'Estonian',
            'Ewe',
            'Faroese',
            'Filipino',
            'Finnish',
            'French',
            'Frisian',
            'Ga',
            'Galician',
            'Georgian',
            'German',
            'Greek',
            'Guarani',
            'Gujarati',
            'Hacker',
            'Haitian Creole',
            'Hausa',
            'Hawaiian',
            'Hebrew',
            'Hindi',
            'Hungarian',
            'Icelandic',
            'Igbo',
            'Indonesian',
            'Interlingua',
            'Irish',
            'Italian',
            'Japanese',
            'Javanese',
            'Kannada',
            'Kazakh',
            'Kinyarwanda',
            'Kirundi',
            'Klingon',
            'Kongo',
            'Korean',
            'Krio (Sierra Leone)',
            'Kurdish',
            'Kurdish (Soranî)',
            'Kyrgyz',
            'Laothian',
            'Latin',
            'Latvian',
            'Lingala',
            'Lithuanian',
            'Lozi',
            'Luganda',
            'Luo',
            'Macedonian',
            'Malagasy',
            'Malay',
            'Malayalam',
            'Maltese',
            'Maori',
            'Marathi',
            'Mauritian Creole',
            'Moldavian',
            'Mongolian',
            'Montenegrin',
            'Nepali',
            'Nigerian Pidgin',
            'Northern Sotho',
            'Norwegian',
            'Norwegian (Nynorsk)',
            'Occitan',
            'Oriya',
            'Oromo',
            'Pashto',
            'Persian',
            'Pirate',
            'Polish',
            'Portuguese (Brazil)',
            'Portuguese (Portugal)',
            'Punjabi',
            'Quechua',
            'Romanian',
            'Romansh',
            'Runyakitara',
            'Russian',
            'Scots Gaelic',
            'Serbian',
            'Serbo-Croatian',
            'Sesotho',
            'Setswana',
            'Seychellois Creole',
            'Shona',
            'Sindhi',
            'Sinhalese',
            'Slovak',
            'Slovenian',
            'Somali',
            'Spanish',
            'Spanish (Latin American)',
            'Sundanese',
            'Swahili',
            'Swedish',
            'Tajik',
            'Tamil',
            'Tatar',
            'Telugu',
            'Thai',
            'Tigrinya',
            'Tonga',
            'Tshiluba',
            'Tumbuka',
            'Turkish',
            'Turkmen',
            'Twi',
            'Uighur',
            'Ukrainian',
            'Urdu',
            'Uzbek',
            'Vietnamese',
            'Welsh',
            'Wolof',
            'Xhosa',
            'Yiddish',
            'Yoruba',
            'Zulu')]
        [parameter(
            Mandatory = $false,
            Position = 2,
            HelpMessage = 'The language of the returned search results'
        )]
        [string] $Language,
        ########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in incognito/private browsing mode'
        )]
        [Alias('incognito', 'inprivate')]
        [switch] $Private,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force enable debugging port, stopping existing browsers if needed'
        )]
        [switch] $Force,
        ###############################################################################
        [Alias('e')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Microsoft Edge'
        )]
        [switch] $Edge,
        ###############################################################################
        [Alias('ch')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Google Chrome'
        )]
        [switch] $Chrome,
        ###############################################################################
        [Alias('c')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Microsoft Edge or Google Chrome, depending on what the default browser is'
        )]
        [switch] $Chromium,
        ###############################################################################
        [Alias('ff')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Firefox'
        )]
        [switch] $Firefox,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in all registered modern browsers'
        )]
        [switch] $All,
        ###############################################################################
        [Alias('m', 'mon')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor, defaults to -1, no positioning'
        )]
        [int] $Monitor = -1,
        ###############################################################################
        [Alias('sw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [switch] $ShowWindow,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial width of the webbrowser window'
        )]
        [int] $Width = -1,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial height of the webbrowser window'
        )]
        [int] $Height = -1,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial X position of the webbrowser window'
        )]
        [int] $X = -999999,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial Y position of the webbrowser window'
        )]
        [int] $Y = -999999,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the left side of the screen'
        )]
        [switch] $Left,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the right side of the screen'
        )]
        [switch] $Right,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the top side of the screen'
        )]
        [switch] $Top,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the bottom side of the screen'
        )]
        [switch] $Bottom,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window in the center of the screen'
        )]
        [switch] $Centered,
        ###############################################################################
        [Alias('a', 'app', 'appmode')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hide the browser controls'
        )]
        [switch] $ApplicationMode,
        ###############################################################################
        [Alias('de', 'ne', 'NoExtensions')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevent loading of browser extensions'
        )]
        [switch] $NoBrowserExtensions,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable the popup blocker'
        )]
        [Alias('allowpopups')]
        [switch] $DisablePopupBlocker,
        ###############################################################################
        [Alias('lang', 'locale')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser accept-lang http header'
        )]
        [string] $AcceptLang = $null,
        ###########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Browser window, ' +
                'see documentation for cmdlet GenXdev.Windows\Send-Key')
        )]
        [string[]] $KeysToSend,
        ########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the browser window after opening'
        )]
        [Alias('fw','focus')]
        [switch] $FocusWindow,

        ########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser window to foreground after opening'
        )]
        [Alias('fg')]
        [switch] $SetForeground,

        ########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximize the window after positioning'
        )]
        [switch] $Maximize,
        ########################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore the window to normal state after positioning'
        )]
        [switch] $SetRestored,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,
        ###############################################################################
        [Alias('nw', 'new')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't re-use existing browser window, instead, create a new one"
        )]
        [switch] $NewWindow,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns a [System.Diagnostics.Process] object of the browserprocess'
        )]
        [Alias('pt')]
        [switch]$PassThru,

        ########################################################################
        [parameter(
            Mandatory = $false,
            HelpMessage = "Don't open webbrowser, just return the url"
        )]
        [switch] $ReturnURL,
        ########################################################################
        [parameter(
            Mandatory = $false,
            HelpMessage = 'After opening webbrowser, return the url'
        )]
        [switch] $ReturnOnlyURL,
        ###############################################################################
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters when sending keys'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        ###############################################################################
        [Alias('HoldKeyboardFocus')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Prevent returning keyboard focus to PowerShell ' +
                'after sending keys')
        )]
        [switch] $SendKeyHoldKeyboardFocus,
        ###############################################################################
        [Alias('UseShiftEnter')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Send Shift+Enter instead of regular Enter for ' +
                'line breaks')
        )]
        [switch] $SendKeyUseShiftEnter,
        ###############################################################################
        [Alias('DelayMilliSeconds')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Delay between sending different key sequences ' +
                'in milliseconds')
        )]
        [int] $SendKeyDelayMilliSeconds,
        ########################################################################
        [Alias('nb')]
        [Parameter(
            HelpMessage = 'Removes the borders of the browser window.'
        )]
        [switch] $NoBorders,
        ###############################################################################
        [Parameter(
            HelpMessage = 'Use session-only mode for browser profile.'
        )]
        [switch] $SessionOnly,
        ###############################################################################
        [Parameter(
            HelpMessage = 'Clear browser session before opening.'
        )]
        [switch] $ClearSession,
        ###############################################################################
        [Alias('FromPreferences')]
        [Parameter(
            HelpMessage = 'Skip browser session restore.'
        )]
        [switch] $SkipSession,
        ###############################################################################
        [Alias('sbs')]
        [Parameter(
            HelpMessage = 'Position browser window either fullscreen on different monitor than PowerShell, or side by side with PowerShell on the same monitor.'
        )]
        [switch] $SideBySide
    )

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Initializing query handler'

        # prepare parameters for passing to query cmdlets
        if (-not $PSBoundParameters.ContainsKey('Queries')) {

            $null = $PSBoundParameters.Add('Queries', $Queries)
        }

        if (-not $PSBoundParameters.ContainsKey('Query')) {

            $null = $PSBoundParameters.Add('Query', $null)
        }
    }

    process {

        # process each search query individually
        foreach ($query in $Queries) {

            # update bound parameters with current query
            $PSBoundParameters['Queries'] = @($query)
            $PSBoundParameters['Query'] = $query

            try {

                # attempt to parse query as uri for url-based processing
                [Uri] $uri = $null
                $queryTrimmed = $query.Trim('"').Trim("'")

                # check if query is a valid uri by attempting to create uri object
                $isUri = (
                    [Uri]::TryCreate($queryTrimmed, 'absolute', [ref] $uri) -or (
                        $query.ToLowerInvariant().StartsWith('www.') -and
                        [Uri]::TryCreate("https://$queryTrimmed", 'absolute',
                            [ref] $uri)
                    )
                ) -and $uri.IsWellFormedOriginalString() -and $uri.Scheme -like 'http*'

                if ($isUri) {

                    # process uri-based queries using site-specific cmdlets
                    Microsoft.PowerShell.Core\Get-Command -Module '*.Queries' -ErrorAction SilentlyContinue |
                        Microsoft.PowerShell.Core\ForEach-Object "$($_.ModuleName)\$($_.Name)" |
                        Microsoft.PowerShell.Core\ForEach-Object {

                            # skip the website query cmdlet to avoid recursion
                            if ($PSItem -like 'Open-WebsiteAndPerformQuery') {
                                return
                            }

                            # execute site info cmdlets for url queries
                            if ($PSItem.EndsWith('SiteInfo') -and $PSItem.StartsWith('Open-')) {

                                # execute host-based query with the domain name
                                $null = & $PSItem $uri.DnsSafeHost

                                # process full url queries for non-host-only cmdlets
                                if (-not $PSItem.EndsWith('HostSiteInfo')) {

                                    # create safe url by removing fragments and query parameters
                                    $safeUrl = $query.Split('#')[0]
                                    if ($uri.Query.Length -gt 0) {
                                        $safeUrl = $safeUrl.Replace($uri.Query, '')
                                    }

                                    # add or update url parameter for cmdlet invocation
                                    if (-not $PSBoundParameters.ContainsKey('Url')) {
                                        $null = $PSBoundParameters.Add('Url',
                                            $safeUrl)
                                    }
                                    else {
                                        $PSBoundParameters['Url'] = $safeUrl
                                    }

                                    try {

                                        # copy identical parameters for cmdlet invocation
                                        $invocationParams = GenXdev.FileSystem\Copy-IdenticalParamValues `
                                            -BoundParameters $PSBoundParameters `
                                            -FunctionName $PSItem `
                                            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

                                        # execute the cmdlet with copied parameters
                                        & $PSItem @invocationParams
                                    }
                                    catch {

                                        # output warning for cmdlet execution errors
                                        Microsoft.PowerShell.Utility\Write-Warning @"
Error: $($PSItem.Exception)
At: $($PSItem.InvocationInfo.PositionMessage)
Line: $($PSItem.InvocationInfo.Line)
"@
                                    }
                                }
                            }
                        }
                    return
                }
            }
            catch {
                throw
            }

            # process text-based queries using general query cmdlets
            Microsoft.PowerShell.Core\Get-Command -Module '*.Queries' -ErrorAction SilentlyContinue |
                Microsoft.PowerShell.Core\ForEach-Object { "$($_.ModuleName)\$($_.Name)" } |
                Microsoft.PowerShell.Core\ForEach-Object {

                    if (-not $PSItem) { return }
                    # skip website query cmdlet to avoid recursion
                    if ($PSItem -like 'GenXdev.Queries\Open-WebsiteAndPerformQuery') { return }

                    # skip generic query cmdlet to avoid recursion
                    if ($PSItem -like 'GenXdev.Queries\Open-AllPossibleQueries') { return }

                    # execute query cmdlets for text-based searches
                    if ($PSItem.EndsWith('Query') -and
                        $PSItem.Contains('\Open-')) {

                        # escape quotes in query text for safe processing
                        $query = $query.Replace("`"", "```"");

                        try {

                            # copy identical parameters for cmdlet invocation
                            $invocationParams = GenXdev.FileSystem\Copy-IdenticalParamValues `
                                -BoundParameters $PSBoundParameters `
                                -FunctionName $PSItem `
                                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

                            # execute the cmdlet with copied parameters
                            & $PSItem @invocationParams
                        }
                        Catch {

                            # output warning for cmdlet execution errors
                            Microsoft.PowerShell.Utility\Write-Warning @"
Error: $($PSItem.Exception)
At: $($PSItem.InvocationInfo.PositionMessage)
Line: $($PSItem.InvocationInfo.Line)
"@
                        }
                    }
                }
        }
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose 'Completed processing all queries'
    }
}
###############################################################################