require "date"
require_relative "./setting.rb"

permalink = File.dirname(Dir.pwd)
target_dir_name = File.basename(permalink)
output_file_path = "#{Dir.pwd}/zip/#{target_dir_name}_#{$day}.zip"

# Zipの中のファイルは常にひとつが良いため掃除しています。
zip_dir_array = Dir.glob("#{Dir.pwd}/zip/*")
File.unlink(*zip_dir_array)

cmd = "cd #{permalink} ; zip -r #{output_file_path} . -x #{$no_zip}"
exec(cmd)
