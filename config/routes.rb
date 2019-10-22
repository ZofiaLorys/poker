# frozen_string_literal: true

Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources 'poker_votings', only: [:create, :show]
      resources 'votes', only: [:create]
    end
  end
end
