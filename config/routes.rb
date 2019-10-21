Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources 'poker_votings'
      resources 'votes'

    end
  end
end
