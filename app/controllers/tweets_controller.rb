class TweetsController < ApplicationController
    def index
        if session[:token].present?
            #get the tweets
            client = Twitter::REST::Client.new do |config|
                config.consumer_key        = "lbxgA4yt9cJHNMTatY1zzKhZu"
                config.consumer_secret     = "mnCThkF90J6nJjTZPCC93SxtjKStv5sCk5kEFfS9tTxINSMM4f"
                config.access_token        = session[:token]
                config.access_token_secret = session[:token_secret]
            end

            @tweets = client.mentions_timeline
        end   
    end

    def login
        @response = request.env['omniauth.auth']
        session[:username] = @response[:info][:nickname]
        session[:token] = @response[:credentials][:token]
        session[:token_secret] = @response[:credentials][:secret]

        redirect_to "/"
    end

    def logout
        reset_session

        redirect_to "/"
    end
end
