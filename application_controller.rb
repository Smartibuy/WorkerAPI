# encoding: UTF-8
require 'sinatra/base'
 #require 'jieba'
require 'json'

class ApplicationController < Sinatra::Base

  # Web App Views Routes
  post '/parse_keyword' do
    content_type :json
    begin
      req = JSON.parse(request.body.read)
    rescue
      halt 404
    end
    keyword = req['keyword']
    # keyword_arr = keyword.to_tags
    # keyword_arr.to_json
  end
  get '/' do
    'WorkerAPI'
  end
end
