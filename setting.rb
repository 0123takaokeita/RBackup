=begin   詳細を設定するファイルです。 
$no_zip 除外するファイルを追加したい場合は '* *' この間にファイル（フォルダ）名を追加してください。 
$date
=end

$no_zip = "'*RBackup*' '*.DS_Store*' '*.git*' '*.gitignore*' '*README.md*'"
$date = Date.today.strftime("%Y_%m_%d")
