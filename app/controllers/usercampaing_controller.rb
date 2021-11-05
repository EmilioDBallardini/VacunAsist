class UsercampaingController < ApplicationController
    def new
        @usercampaing = Usercampaing.new
    end

    def create
        @usercampaing = current_user.create(f_registracion=t.datetime)
    end
end
