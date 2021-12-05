require "rubygems"
require "date"
require "./setting.rb"

permalink = File.dirname(Dir.pwd)
current_file_name = File.basename(permalink)
output_file_path = "#{Dir.pwd}/zip/#{current_file_name}_#{$day}.zip"
cmd = "cd #{permalink} ; zip -r #{output_file_path} . -x #{$no_zip}"
zip_dir_array = Dir.glob("#{Dir.pwd}/zip/*")

#  zipフォルダを空にしたいため掃除します。
def unlink_dir(dir_arr)
  dir_arr.each do |file|
    File.unlink(file)
  end
end

unlink_dir(zip_dir_array)
exec(cmd)
