Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources 'poker_votings'
    end
  end
end
