Rails.application.routes.draw do
  get 'calendars/index'
  get 'calendar/index'
  devise_for :users
  root to: "calendars#index"
end
