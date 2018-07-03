require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    file_list = Dir["#{@path}/*.mp3"]
    @files = file_list.each {|file| file.slice!(0,21)}
    @files
    #binding.pry
  end

  def import
    #binding.pry
    files.each {|file| Song.new_by_filename(file)}
    #Song.new_by_filename(file)
  end

end
