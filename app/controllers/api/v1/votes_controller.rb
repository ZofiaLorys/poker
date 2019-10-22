# frozen_string_literal: true

module Api
  module V1
    class VotesController < ApplicationController
      skip_before_action :verify_authenticity_token

      def create
        @vote = Vote.new(vote_params)
        if @vote.poker_voting.amount_of_votes <= @vote.poker_voting.votes.count
          render(json: {
                   error: 'Too many votes for this voting',
                   status: 400
                 }) && return
        end
        @vote = Vote.create!(vote_params)
        render json: @vote, status: :created
      end

      private

      def vote_params
        params.permit(:username, :value, :poker_voting_id)
      end
    end
  end
end
