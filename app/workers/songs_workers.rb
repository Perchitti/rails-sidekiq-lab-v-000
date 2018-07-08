class SongsWorker
  require 'csv'
  include SideKiq::Worker

  def perform(songs_file)
    CSV.foreach(songs_file, headers: true) do |t|
      Song.create(title: t[0], artist_name: [1])
    end
  end

end