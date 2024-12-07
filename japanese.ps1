# 言語パックインストール
Install-Language ja-jp

# システムロケールの設定
Set-WinSystemLocale -SystemLocale ja-JP

# タイムゾーンの設定
Set-TimeZone -Id "Tokyo Standard Time"

# 地域の設定
Set-Culture -CultureInfo ja-JP

# システム優先言語の設定
Set-SystemPreferredUILanguage ja-JP

# ロケーションの設定
Set-WinHomeLocation -GeoId 0x7a

# 言語リストの設定
$mylang = New-WinUserLanguageList -Language "ja-JP"
Set-WinUserLanguageList $mylang -Force

# ようこそ画面へ設定のコピー
Install-Language ja-jp -CopyTosettings

# Windows Update の実行
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Install-Module PSWindowsUpdate -Force
Get-WindowsUpdate -AcceptAll -Install -AutoReboot

