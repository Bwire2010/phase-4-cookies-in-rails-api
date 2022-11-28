class SessionsController < ApplicationController
  
  def index
    byebug
    session[:session_hello] ||= "Patrobas"
    cookies[:cookies_hello] ||= "World"
    render json: { session: session, cookies: cookies.to_hash }
  end

end
