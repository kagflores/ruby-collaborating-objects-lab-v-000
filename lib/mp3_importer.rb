require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    file_list = Dir["#{@path}/*.mp3"]
    @files = []
    @files = file_list.each do |path|
      path.slice!(0,21)
    end
    @files
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end

end
