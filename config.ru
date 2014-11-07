$:<< File.join(File.dirname(__FILE__), 'app')
require 'sinatra_mdb'

run SinatraMdb::Web
