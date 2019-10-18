module Api
    module V1
        class PokerVotingsController < ApplicationController
             skip_before_action :verify_authenticity_token
      
            def create
              @poker_voting = PokerVoting.create!(poker_voting_params)
              render json: @poker_voting, status: :created
            end
    
      
            private
      
            def poker_voting_params
              params.permit(:voters)
            end
      
          end
        end
     
end
