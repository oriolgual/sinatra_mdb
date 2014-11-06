module SinatraMdb
  describe 'Web' do
    include Rack::Test::Methods

    def app
      SinatraMdb::Web
    end

    describe '/' do
      it 'says Hello World' do
        get '/'

        expect(last_response).to be_ok
        expect(last_response.body).to include('Hello World')
      end
    end
  end
end
