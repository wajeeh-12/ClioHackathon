Rails.application.routes.draw do

  get 'leaderboard' => 'leader_board#show'

  get 'givethrivecoin/show'
  get 'leader_board/show'


  devise_for :users
  root to: 'dashboards#show'
end
