#
# Module manifest for module 'GenXdev.Queries'
@{

    # Script module or binary module file associated with this manifest.
    RootModule           = 'GenXdev.Queries.psm1'

    # Version number of this module.
    ModuleVersion        = '1.40.2024'
    # Supported PSEditions
    # CompatiblePSEditions = @()

    # ID used to uniquely identify this module
    GUID                 = '2f62080f-0483-4421-8497-b3d433b65174'

    # Author of this module
    Author               = 'GenXdev'

    # Company or vendor of this module
    CompanyName          = 'GenXdev'

    # Copyright statement for this module
    Copyright            = 'Copyright (c) 2024 GenXdev'

    # Description of the functionality provided by this module
    Description          = 'A Windows PowerShell module for finding resources and information on the internet'

    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion    = '7.4.2'

    # # Intended for PowerShell Core
    CompatiblePSEditions = 'Core'

    # # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    ClrVersion           = '8.0.4'

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules      = @(@{ModuleName = 'GenXdev.Helpers'; ModuleVersion = '1.40.2024' }, @{ModuleName = 'GenXdev.Webbrowser'; ModuleVersion = '1.40.2024' }, @{ModuleName = 'GenXdev.FileSystem'; ModuleVersion = '1.40.2024' })

    # Assemblies that must be loaded prior to importing this module
    RequiredAssemblies   = @(
        "System.Web",
        "GenXdev.Queries.dll",
        "System.Management.Automation.dll"
    )

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()

    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    NestedModules        = @("GenXdev.Queries.Webbrowser.psm1", "GenXdev.Queries.Text.psm1", "GenXdev.Queries.Websites.psm1")

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport    = '*' # @("*")

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no Cmdlets to export.
    CmdletsToExport      = '*' # = @("*")

    # Variables to export from this module
    VariablesToExport    = '*'

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport      = '*'

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    ModuleList           = @("GenXdev.Queries")

    # List of all files packaged with this module
    FileList             = @(
        "GenXdev.Queries.dll",
        "GenXdev.Queries.pdb",
        "GenXdev.Queries.psd1",
        "GenXdev.Queries.psm1",
        "GenXdev.Queries.Text.psm1",
        "GenXdev.Queries.Webbrowser.psm1",
        "GenXdev.Queries.Websites.psm1",
        "Get-GoogleSearchResultUrls.js",
        "LICENSE",
        "license.txt",
        "Open-AllGoogleLinks.js",
        "Open-AllYoutubeVideos.js",
        "PauseVideoOnHide.js",
        "powershell.jpg",
        "README.md",
        "System.Management.Automation.dll"
    )

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData          = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags                     = 'Google', 'Searchengine', 'gpt3', 'openai', 'GenXdev'

            # A URL to the license for this module.
            LicenseUri               = 'https://raw.githubusercontent.com/genXdev/GenXdev.Queries/main/LICENSE'

            # A URL to the main website for this project.
            ProjectUri               = 'https://github.com/genXdev/GenXdev.Queries'

            # A URL to an icon representing this module.
            IconUri                  = 'https://genxdev.net/favicon.ico'

            # ReleaseNotes of this module
            # ReleaseNotes = ''

            # Prerelease string of this module
            # Prerelease = ''

            # Flag to indicate whether the module requires explicit user acceptance for install/update/save
            RequireLicenseAcceptance = $true

            # External dependent modules of this module
            # ExternalModuleDependencies = @()

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    HelpInfoURI          = 'https://github.com/genXdev/GenXdev.Queries/blob/main/README.md#cmdlet-index'

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''
}

# PrivateData = @{
#     PSData = @{

#       # ...

#       # !! This field is *ancillary* to the more detailed 'RequiredModules' field and
#       # !! must reference the *same modules*, but by *names only*,
#       # !! in order to automatically install other modules
#       # !! *from the same repository* that this module depends on.
#       # !! To be safe, specify even a *single* name as an *array*
#       # !! (While this is not a general requirement in manifests,
#       # !!  it may be necessary here due to a bug.)
#       ExternalModuleDependencies = @('GenXdev.Helpers')
#   }
# }
# SIG # Begin signature block
# MIIbzgYJKoZIhvcNAQcCoIIbvzCCG7sCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCD5kZwj7FkNCPme
# YdXMJL15QuaXojwrg9YZSgwiJ0co8KCCFhswggMOMIIB9qADAgECAhBwxOfTiuon
# hU3SZf3YwpWAMA0GCSqGSIb3DQEBCwUAMB8xHTAbBgNVBAMMFEdlblhkZXYgQXV0
# aGVudGljb2RlMB4XDTI0MDUwNTIwMzEzOFoXDTM0MDUwNTE4NDEzOFowHzEdMBsG
# A1UEAwwUR2VuWGRldiBBdXRoZW50aWNvZGUwggEiMA0GCSqGSIb3DQEBAQUAA4IB
# DwAwggEKAoIBAQDAD4JXwna5uBAYw54JXXscQPSos9pMeeyV99hvQPs6IcQ/wIXs
# zQ0xdkMGlzo1Nvldyqwa6+OXMyHsZM2D6QA1WjRoTzjT432hlGJT3VrP3R9cvOfg
# sAnVLpZy+4uty2fh5o8NEk4tmULOXDPZBT6NOoRjRCyt+KwCL8yioCFWa/7pqpG0
# niyJka8rhOVQLg8sZ+n5DrSihs1o3PyN28mZLendSbL9Y06cbqadL0J6sn31sw6e
# tpLOToIj1DXQbID0ejeafONHYJ3cKBrQ0TG7aoK8dte4X+iQQuDgA/l7ATxCjC7V
# 18vKRQXzSjvBQvNuWSw6DX2b7sc7dzC9v2T1AgMBAAGjRjBEMA4GA1UdDwEB/wQE
# AwIHgDATBgNVHSUEDDAKBggrBgEFBQcDAzAdBgNVHQ4EFgQUf8ZHrsKtJB9RD6z2
# x2Txu7wQ1/4wDQYJKoZIhvcNAQELBQADggEBAK/GgNjLVhQkhbFMrJUt3nFfYa2a
# iP/+U2vapwtqeyNBreMiTYwtqkULEPotRlRCMZ+k8kwRhv1bsR82MXK1H74DKcTM
# 0gu62RxOMXz8ij0BjXW9axEWqYGAbbP0EoNyoBzqiLYqXkwCXqIFsywuDZO4QY3D
# 1c+NEKVnPnhf/gufOUrlugklExh9i4QagCSlUObYAa9yBhcoxOHzN0v6mN+I7EjM
# sVsydPsk3NshubldpNSavFUcF477l21eM5F1bFXGTJGgGq9k1/drpILe5e4oLy9w
# sxmdnqpyvbwtPe2+LZx0XSlR5vCfYFih6eV8fNcgvMmAKAcuIuKxKwJkAscwggWN
# MIIEdaADAgECAhAOmxiO+dAt5+/bUOIIQBhaMA0GCSqGSIb3DQEBDAUAMGUxCzAJ
# BgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5k
# aWdpY2VydC5jb20xJDAiBgNVBAMTG0RpZ2lDZXJ0IEFzc3VyZWQgSUQgUm9vdCBD
# QTAeFw0yMjA4MDEwMDAwMDBaFw0zMTExMDkyMzU5NTlaMGIxCzAJBgNVBAYTAlVT
# MRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5j
# b20xITAfBgNVBAMTGERpZ2lDZXJ0IFRydXN0ZWQgUm9vdCBHNDCCAiIwDQYJKoZI
# hvcNAQEBBQADggIPADCCAgoCggIBAL/mkHNo3rvkXUo8MCIwaTPswqclLskhPfKK
# 2FnC4SmnPVirdprNrnsbhA3EMB/zG6Q4FutWxpdtHauyefLKEdLkX9YFPFIPUh/G
# nhWlfr6fqVcWWVVyr2iTcMKyunWZanMylNEQRBAu34LzB4TmdDttceItDBvuINXJ
# IB1jKS3O7F5OyJP4IWGbNOsFxl7sWxq868nPzaw0QF+xembud8hIqGZXV59UWI4M
# K7dPpzDZVu7Ke13jrclPXuU15zHL2pNe3I6PgNq2kZhAkHnDeMe2scS1ahg4AxCN
# 2NQ3pC4FfYj1gj4QkXCrVYJBMtfbBHMqbpEBfCFM1LyuGwN1XXhm2ToxRJozQL8I
# 11pJpMLmqaBn3aQnvKFPObURWBf3JFxGj2T3wWmIdph2PVldQnaHiZdpekjw4KIS
# G2aadMreSx7nDmOu5tTvkpI6nj3cAORFJYm2mkQZK37AlLTSYW3rM9nF30sEAMx9
# HJXDj/chsrIRt7t/8tWMcCxBYKqxYxhElRp2Yn72gLD76GSmM9GJB+G9t+ZDpBi4
# pncB4Q+UDCEdslQpJYls5Q5SUUd0viastkF13nqsX40/ybzTQRESW+UQUOsxxcpy
# FiIJ33xMdT9j7CFfxCBRa2+xq4aLT8LWRV+dIPyhHsXAj6KxfgommfXkaS+YHS31
# 2amyHeUbAgMBAAGjggE6MIIBNjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBTs
# 1+OC0nFdZEzfLmc/57qYrhwPTzAfBgNVHSMEGDAWgBRF66Kv9JLLgjEtUYunpyGd
# 823IDzAOBgNVHQ8BAf8EBAMCAYYweQYIKwYBBQUHAQEEbTBrMCQGCCsGAQUFBzAB
# hhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUHMAKGN2h0dHA6Ly9j
# YWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcnQw
# RQYDVR0fBD4wPDA6oDigNoY0aHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lD
# ZXJ0QXNzdXJlZElEUm9vdENBLmNybDARBgNVHSAECjAIMAYGBFUdIAAwDQYJKoZI
# hvcNAQEMBQADggEBAHCgv0NcVec4X6CjdBs9thbX979XB72arKGHLOyFXqkauyL4
# hxppVCLtpIh3bb0aFPQTSnovLbc47/T/gLn4offyct4kvFIDyE7QKt76LVbP+fT3
# rDB6mouyXtTP0UNEm0Mh65ZyoUi0mcudT6cGAxN3J0TU53/oWajwvy8LpunyNDzs
# 9wPHh6jSTEAZNUZqaVSwuKFWjuyk1T3osdz9HNj0d1pcVIxv76FQPfx2CWiEn2/K
# 2yCNNWAcAgPLILCsWKAOQGPFmCLBsln1VWvPJ6tsds5vIy30fnFqI2si/xK4VC0n
# ftg62fC2h5b9W9FcrBjDTZ9ztwGpn1eqXijiuZQwggauMIIElqADAgECAhAHNje3
# JFR82Ees/ShmKl5bMA0GCSqGSIb3DQEBCwUAMGIxCzAJBgNVBAYTAlVTMRUwEwYD
# VQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAf
# BgNVBAMTGERpZ2lDZXJ0IFRydXN0ZWQgUm9vdCBHNDAeFw0yMjAzMjMwMDAwMDBa
# Fw0zNzAzMjIyMzU5NTlaMGMxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2Vy
# dCwgSW5jLjE7MDkGA1UEAxMyRGlnaUNlcnQgVHJ1c3RlZCBHNCBSU0E0MDk2IFNI
# QTI1NiBUaW1lU3RhbXBpbmcgQ0EwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIK
# AoICAQDGhjUGSbPBPXJJUVXHJQPE8pE3qZdRodbSg9GeTKJtoLDMg/la9hGhRBVC
# X6SI82j6ffOciQt/nR+eDzMfUBMLJnOWbfhXqAJ9/UO0hNoR8XOxs+4rgISKIhjf
# 69o9xBd/qxkrPkLcZ47qUT3w1lbU5ygt69OxtXXnHwZljZQp09nsad/ZkIdGAHvb
# REGJ3HxqV3rwN3mfXazL6IRktFLydkf3YYMZ3V+0VAshaG43IbtArF+y3kp9zvU5
# EmfvDqVjbOSmxR3NNg1c1eYbqMFkdECnwHLFuk4fsbVYTXn+149zk6wsOeKlSNbw
# sDETqVcplicu9Yemj052FVUmcJgmf6AaRyBD40NjgHt1biclkJg6OBGz9vae5jtb
# 7IHeIhTZgirHkr+g3uM+onP65x9abJTyUpURK1h0QCirc0PO30qhHGs4xSnzyqqW
# c0Jon7ZGs506o9UD4L/wojzKQtwYSH8UNM/STKvvmz3+DrhkKvp1KCRB7UK/BZxm
# SVJQ9FHzNklNiyDSLFc1eSuo80VgvCONWPfcYd6T/jnA+bIwpUzX6ZhKWD7TA4j+
# s4/TXkt2ElGTyYwMO1uKIqjBJgj5FBASA31fI7tk42PgpuE+9sJ0sj8eCXbsq11G
# deJgo1gJASgADoRU7s7pXcheMBK9Rp6103a50g5rmQzSM7TNsQIDAQABo4IBXTCC
# AVkwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUuhbZbU2FL3MpdpovdYxq
# II+eyG8wHwYDVR0jBBgwFoAU7NfjgtJxXWRM3y5nP+e6mK4cD08wDgYDVR0PAQH/
# BAQDAgGGMBMGA1UdJQQMMAoGCCsGAQUFBwMIMHcGCCsGAQUFBwEBBGswaTAkBggr
# BgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29tMEEGCCsGAQUFBzAChjVo
# dHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkUm9vdEc0
# LmNydDBDBgNVHR8EPDA6MDigNqA0hjJodHRwOi8vY3JsMy5kaWdpY2VydC5jb20v
# RGlnaUNlcnRUcnVzdGVkUm9vdEc0LmNybDAgBgNVHSAEGTAXMAgGBmeBDAEEAjAL
# BglghkgBhv1sBwEwDQYJKoZIhvcNAQELBQADggIBAH1ZjsCTtm+YqUQiAX5m1tgh
# QuGwGC4QTRPPMFPOvxj7x1Bd4ksp+3CKDaopafxpwc8dB+k+YMjYC+VcW9dth/qE
# ICU0MWfNthKWb8RQTGIdDAiCqBa9qVbPFXONASIlzpVpP0d3+3J0FNf/q0+KLHqr
# hc1DX+1gtqpPkWaeLJ7giqzl/Yy8ZCaHbJK9nXzQcAp876i8dU+6WvepELJd6f8o
# VInw1YpxdmXazPByoyP6wCeCRK6ZJxurJB4mwbfeKuv2nrF5mYGjVoarCkXJ38SN
# oOeY+/umnXKvxMfBwWpx2cYTgAnEtp/Nh4cku0+jSbl3ZpHxcpzpSwJSpzd+k1Os
# Ox0ISQ+UzTl63f8lY5knLD0/a6fxZsNBzU+2QJshIUDQtxMkzdwdeDrknq3lNHGS
# 1yZr5Dhzq6YBT70/O3itTK37xJV77QpfMzmHQXh6OOmc4d0j/R0o08f56PGYX/sr
# 2H7yRp11LB4nLCbbbxV7HhmLNriT1ObyF5lZynDwN7+YAN8gFk8n+2BnFqFmut1V
# wDophrCYoCvtlUG3OtUVmDG0YgkPCr2B2RP+v6TR81fZvAT6gt4y3wSJ8ADNXcL5
# 0CN/AAvkdgIm2fBldkKmKYcJRyvmfxqkhQ/8mJb2VVQrH4D6wPIOK+XW+6kvRBVK
# 5xMOHds3OBqhK/bt1nz8MIIGwjCCBKqgAwIBAgIQBUSv85SdCDmmv9s/X+VhFjAN
# BgkqhkiG9w0BAQsFADBjMQswCQYDVQQGEwJVUzEXMBUGA1UEChMORGlnaUNlcnQs
# IEluYy4xOzA5BgNVBAMTMkRpZ2lDZXJ0IFRydXN0ZWQgRzQgUlNBNDA5NiBTSEEy
# NTYgVGltZVN0YW1waW5nIENBMB4XDTIzMDcxNDAwMDAwMFoXDTM0MTAxMzIzNTk1
# OVowSDELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMuMSAwHgYD
# VQQDExdEaWdpQ2VydCBUaW1lc3RhbXAgMjAyMzCCAiIwDQYJKoZIhvcNAQEBBQAD
# ggIPADCCAgoCggIBAKNTRYcdg45brD5UsyPgz5/X5dLnXaEOCdwvSKOXejsqnGfc
# YhVYwamTEafNqrJq3RApih5iY2nTWJw1cb86l+uUUI8cIOrHmjsvlmbjaedp/lvD
# 1isgHMGXlLSlUIHyz8sHpjBoyoNC2vx/CSSUpIIa2mq62DvKXd4ZGIX7ReoNYWyd
# /nFexAaaPPDFLnkPG2ZS48jWPl/aQ9OE9dDH9kgtXkV1lnX+3RChG4PBuOZSlbVH
# 13gpOWvgeFmX40QrStWVzu8IF+qCZE3/I+PKhu60pCFkcOvV5aDaY7Mu6QXuqvYk
# 9R28mxyyt1/f8O52fTGZZUdVnUokL6wrl76f5P17cz4y7lI0+9S769SgLDSb495u
# ZBkHNwGRDxy1Uc2qTGaDiGhiu7xBG3gZbeTZD+BYQfvYsSzhUa+0rRUGFOpiCBPT
# aR58ZE2dD9/O0V6MqqtQFcmzyrzXxDtoRKOlO0L9c33u3Qr/eTQQfqZcClhMAD6F
# aXXHg2TWdc2PEnZWpST618RrIbroHzSYLzrqawGw9/sqhux7UjipmAmhcbJsca8+
# uG+W1eEQE/5hRwqM/vC2x9XH3mwk8L9CgsqgcT2ckpMEtGlwJw1Pt7U20clfCKRw
# o+wK8REuZODLIivK8SgTIUlRfgZm0zu++uuRONhRB8qUt+JQofM604qDy0B7AgMB
# AAGjggGLMIIBhzAOBgNVHQ8BAf8EBAMCB4AwDAYDVR0TAQH/BAIwADAWBgNVHSUB
# Af8EDDAKBggrBgEFBQcDCDAgBgNVHSAEGTAXMAgGBmeBDAEEAjALBglghkgBhv1s
# BwEwHwYDVR0jBBgwFoAUuhbZbU2FL3MpdpovdYxqII+eyG8wHQYDVR0OBBYEFKW2
# 7xPn783QZKHVVqllMaPe1eNJMFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwz
# LmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRHNFJTQTQwOTZTSEEyNTZUaW1l
# U3RhbXBpbmdDQS5jcmwwgZAGCCsGAQUFBwEBBIGDMIGAMCQGCCsGAQUFBzABhhho
# dHRwOi8vb2NzcC5kaWdpY2VydC5jb20wWAYIKwYBBQUHMAKGTGh0dHA6Ly9jYWNl
# cnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRHNFJTQTQwOTZTSEEyNTZU
# aW1lU3RhbXBpbmdDQS5jcnQwDQYJKoZIhvcNAQELBQADggIBAIEa1t6gqbWYF7xw
# jU+KPGic2CX/yyzkzepdIpLsjCICqbjPgKjZ5+PF7SaCinEvGN1Ott5s1+FgnCvt
# 7T1IjrhrunxdvcJhN2hJd6PrkKoS1yeF844ektrCQDifXcigLiV4JZ0qBXqEKZi2
# V3mP2yZWK7Dzp703DNiYdk9WuVLCtp04qYHnbUFcjGnRuSvExnvPnPp44pMadqJp
# ddNQ5EQSviANnqlE0PjlSXcIWiHFtM+YlRpUurm8wWkZus8W8oM3NG6wQSbd3lqX
# TzON1I13fXVFoaVYJmoDRd7ZULVQjK9WvUzF4UbFKNOt50MAcN7MmJ4ZiQPq1JE3
# 701S88lgIcRWR+3aEUuMMsOI5ljitts++V+wQtaP4xeR0arAVeOGv6wnLEHQmjNK
# qDbUuXKWfpd5OEhfysLcPTLfddY2Z1qJ+Panx+VPNTwAvb6cKmx5AdzaROY63jg7
# B145WPR8czFVoIARyxQMfq68/qTreWWqaNYiyjvrmoI1VygWy2nyMpqy0tg6uLFG
# hmu6F/3Ed2wVbK6rr3M66ElGt9V/zLY4wNjsHPW2obhDLN9OTH0eaHDAdwrUAuBc
# YLso/zjlUlrWrBciI0707NMX+1Br/wd3H3GXREHJuEbTbDJ8WC9nR2XlG3O2mflr
# LAZG70Ee8PBf4NvZrZCARK+AEEGKMYIFCTCCBQUCAQEwMzAfMR0wGwYDVQQDDBRH
# ZW5YZGV2IEF1dGhlbnRpY29kZQIQcMTn04rqJ4VN0mX92MKVgDANBglghkgBZQME
# AgEFAKCBhDAYBgorBgEEAYI3AgEMMQowCKACgAChAoAAMBkGCSqGSIb3DQEJAzEM
# BgorBgEEAYI3AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMC8GCSqG
# SIb3DQEJBDEiBCBVPf1Q3cttD6QXVmbwgx9LkIWqQqxTVbo9PE8CLbo2ATANBgkq
# hkiG9w0BAQEFAASCAQBUIK6cTNYosMuzhP8ektNZXGvgwwCRWzJhTcyIWORFVYtr
# MUtsy8OP4xD/RBtWvyfJFt2+0au2l9qXYymAvJjev4hfmMSwMIrCBkzAk/VnRUag
# +yADBIM0p3v1MNupsnfmadVwg3SFk4uQGCIlUP1qkvABFMc+TLf6QsFmUNPy6Api
# jYbQsS4T3DDIgSlySSsgKrhUvE9+l3msgGs7zpW0fowRF/BWxZHxJsF9hVbzenWq
# 5cWdh5SCbmyJw2YP+D5Z7vNScgDXpYQFp+0C7FNVlDZnsrjXVX5Kz9tmHuOe0nCX
# 4SO+5opf+XmUDhwqSCQ6RGhhHwRCjEZsLF4vBIDQoYIDIDCCAxwGCSqGSIb3DQEJ
# BjGCAw0wggMJAgEBMHcwYzELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0
# LCBJbmMuMTswOQYDVQQDEzJEaWdpQ2VydCBUcnVzdGVkIEc0IFJTQTQwOTYgU0hB
# MjU2IFRpbWVTdGFtcGluZyBDQQIQBUSv85SdCDmmv9s/X+VhFjANBglghkgBZQME
# AgEFAKBpMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8X
# DTI0MDYwNzA5MTkzOFowLwYJKoZIhvcNAQkEMSIEIHgwAPe/a5YGJ2Xeube3IEWP
# /6sXnJm6vqIPe56GIPNjMA0GCSqGSIb3DQEBAQUABIICAFOSEhueE5LGDlU+hcGj
# LPZANGTLpewoJQ00TBpf5SKtS1NQ3iDyY92vmcblbCmc8HKA36ovbn0Yu/Bi4pcI
# RuLGJnEtWhSgBRuVNEE6PFjL0JzQur4IaCme/6kvy+dgVx8D4iBwZ+0X49s7hPj3
# pgKOlcdhpANCspRTAtzQvfcMFjdyp1GCwNjBCJM9FJ9eBWzraNBzqrGdwVNYBYQW
# 9wJUNZdEBPWEKQxrPB1BqBL9wxLbbCTVrJ8CfiMOJKsxRnUdWr49b6Vk4WoIO40v
# bCbu0epiFfdKfhFiek7bdRSQdJJnNKdCLGxgy0Jcxi9KsucB4E/O0JUz8973V/R5
# B9hEZlH181wRaEmzl/ykyUzBzo2bXT2Al0PQun/Ev5VPGDLrjoJfjqA3d1owmMDz
# 76sJZwWzqz0aQIG25l0lmBYYHxLEb4qyi4e1Rx5H9PYFMz6fpCJIIXHStRo38Zze
# Hymo5qetrov+CPmHdAY7fJ9iEKZYxuUIz3NK5iRYRGSDgnMwPe0yvyH2Mjdsi2Ul
# Jc7hWrvuCjBob37q1vqegdyFxQUB/SeZ9zxhzXOvs36UwFGsMeKd4bTOHiVMrpCZ
# XjY2B5bxEOJzkM0jSfzoxodbjoFW/CesMrz8LfPiVPxwb9GYJGUcYDKfKITbIwyA
# hwQzexaH2s4mRo7PjLjS2P+Y
# SIG # End signature block
