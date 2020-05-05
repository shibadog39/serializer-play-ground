require 'benchmark/ips'

class BenchmarksController < ApplicationController
  def index
    @users = User.preload(:posts)

    jb = render_to_string 'index'
    fastjson_api = render_to_string json: FastJsonapi::UsersSerializer.new(@users).serializable_hash
    raise 'jb != fastjson_api' unless jb == fastjson_api

    result = benchmark(@users)
    render plain: result.data.to_s
  end

  private

  def benchmark(users)
    Benchmark.ips do |x|
      x.report('fastjson-api') do
        render_to_string json: FastJsonapi::UsersSerializer.new(users).serializable_hash
      end
      x.report('jb') do
        render_to_string 'index'
      end

      x.compare!
    end
  end
end
