# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'kittens#index'
  resources :kittens
end
