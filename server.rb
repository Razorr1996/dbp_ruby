# frozen_string_literal: true

configure do
  set :server, :puma
  set :port, ENV['PORT']
  set :bind, '0.0.0.0'
end

get '/ping' do
  'pong'
end

get '/health_check' do
  'success'
end

get '/artem' do
  'basalaev'
end

get '/happy' do
  'Happy Birthday 2021-09-06!'
end

get '/cp' do
  'Continuous Preview success!'
end

get '/stress' do
  timeout = params[:timeout]
  cmd = "stress-ng --vm 1 --vm-bytes 2G --vm-method all --verify -t #{timeout}s"
  pid = Process.spawn(cmd)
  Process.detach pid
  "stressed with process pid #{pid} for #{timeout} seconds"
end
