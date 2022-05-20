Rails.application.routes.draw do
  get 'leader_board/show'

  devise_for :users
  root to: 'dashboards#show'
end
