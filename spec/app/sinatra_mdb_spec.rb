require 'sinatra_mdb'

module SinatraMdb
  describe 'Web' do
    include Rack::Test::Methods

    def app
      SinatraMdb::Web
    end

    before do
      Capybara.app = app
    end

    describe '/' do
      it 'says Hello World' do
        get '/'

        expect(last_response).to be_ok
        expect(last_response.body).to include('Hello World')
      end
    end

    describe 'acceptance test' do
      it 'checks the contents' do
        visit '/'

        expect(page).to have_content('Hello World')
      end
    end
  end
end
