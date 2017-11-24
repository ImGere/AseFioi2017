class StaticPagesController < ApplicationController
  before_action :require_login, only: :statistics
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def statistics
    @hours = Hour.find_each(user_id: current_user.id)
    @clients = Client.where(user_id: current_user.id).to_a
    @invoices = Invoice.all
  end
end
