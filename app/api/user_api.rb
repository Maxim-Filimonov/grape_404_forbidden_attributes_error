require 'grape'

class UserAPI < Grape::API
  resources :user do
    post '/' do
      User.create(params[:user])
    end
    post '/actioncontroller' do
      safe_params = ActionController::Parameters.new(params).require(:user).permit(:name, :email)
      User.create(safe_params[:user])
    end
  end
end
