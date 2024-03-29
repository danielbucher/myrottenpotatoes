require 'spec_helper'

describe Movie do
  describe 'searching Tmdb by keyword' do
    it 'should call Tmdb with title keywords given valid API key' do
      TmdbMovie.should_receive(:find).
        with(hash_including :title => 'Inception')
      Movie.find_in_tmdb('Inception')
    end
    it 'should raise an InvalidKeyError with no API key' do
      lambda { Movie.find_in_tmdb('Inception') }.
        should raise_error(Movie::InvalidKeyError)
    end
  end
end