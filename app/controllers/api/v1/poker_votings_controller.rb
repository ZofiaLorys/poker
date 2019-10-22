# frozen_string_literal: true

module Api
  module V1
    class PokerVotingsController < ApplicationController
      skip_before_action :verify_authenticity_token
      before_action :set_poker_voting, only: [:show]

      def create
        @poker_voting = PokerVoting.create!(poker_voting_params)
        render json: @poker_voting, status: :created
      end

      def show
        results = @poker_voting.votes.map { |vote| { username: vote.username, value: vote.value } }
        render json: @poker_voting.attributes.merge(results: results)
      end

      private

      def poker_voting_params
        params.permit(:amount_of_votes)
      end

      def set_poker_voting
        @poker_voting = PokerVoting.find(params[:id])
      end
    end
  end
end
