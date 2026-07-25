class VersionController < ApplicationController
  skip_authorization_check
  skip_before_action :authenticate_http_basic

  def show
    sha = File.read(Rails.root.join(".git-sha")).strip rescue "unknown"
    render json: { sha: sha }
  end
end
