class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
   # binding.pry
    Dir.children('./spec/fixtures/mp3s')
  end
  
  def import
    files.each{|f| Song.new_by_filename(f)}
  end
end