class TestsController < ApplicationController
  def letsencrypt
    if params[:id] == ENV["LETSENCRYPT_REQUEST"]
    @test = ENV["LETSENCRYPT_RESPONSE"]
    end
  end
end
