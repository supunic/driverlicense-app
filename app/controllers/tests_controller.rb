class TestsController < ApplicationController
  def letsencrypt
    if params[:id] == ENV["LETSENCRYPT_REQUEST"]
    @test = ENV["LETSENCRYPT_RESPONSE"]
    binding.pry
    end
  end
end
