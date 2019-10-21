module Api
    module V1
        class VotesController < ApplicationController
             skip_before_action :verify_authenticity_token
      
            def create
              @vote = Vote.create!(vote_params)
              render json: @vote, status: :created
            end
    
      
            private
      
            def vote_params
              params.permit(:value, :poker_voting_id)
            end

            
      
          end
        end
     
end
