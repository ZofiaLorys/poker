module Api
    module V1
        class PokerVotingsController < ApplicationController
             skip_before_action :verify_authenticity_token
             before_action :set_poker_voting, only: [:show, :update, :destroy]

      
             # GET /index
              def index
                @poker_votings = PokerVoting.all
                render json: @poker_votings
              end

    
            
             def create
              @poker_voting = PokerVoting.create!(poker_voting_params)
              render json: @poker_voting, status: :created
            end

            def show
              render json: @poker_voting, average: @poker_votings.
            end


    
      
            private
      
            def poker_voting_params
              params.permit(:voters)
            end

            def set_poker_voting
              @poker_voting = PokerVoting.find(params[:id])
            end
      
      
          end
        end
     
end
