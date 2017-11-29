class ChartsController < ApplicationController
  # pie chart of billed hours
  def total_hours
    render json: Hour.where(user_id: current_user.id).group(:is_fatturata).count
  end

  # list of single invoice amount chart
  def total_single_invoice_amount
    render json: Hour.where(user_id: current_user.id).joins(:invoice).order("invoices.id ASC").pluck("invoices.id",:total_amount)
  end
  # pie chart with total amount billed for every client
  def total_invoices_amount_per_client
    list_of_clients = Client.where(user_id: current_user.id)
    total_amount_divided_by_clients ||= Array.new
    list_of_clients.each do |client|
      total_amount_per_client = 0
      client.hours.each do |hour|
        if hour.invoice_id != nil
          total_amount_per_client += hour.invoice.total_amount
        end
      end
      total_amount_divided_by_clients << [client.name, total_amount_per_client]
    end
    render json: total_amount_divided_by_clients
  end
  # client invoice amount per client
  def total_invoices_amount_per_client_per_day
    render json: Hour.joins(:invoice, :client).where(user_id: current_user.id).group("clients.name").group_by_day("invoices.created_at", format: "%d/%m/%y").sum(:total_amount).chart_json
  end

  # By time - by day
  def total_hour_count_per_day
    render json: Hour.where(user_id: current_user.id).group_by_day(:date, format: "%d/%m/%y").count
  end
  # By time - by month
  def total_invoices_amount_per_month
    render json: Hour.where(user_id: current_user.id).group_by_month(:date, format: "%B").count
  end

  # by time - by day of the week
  def total_invoices_amount_per_day_of_the_week
    render json: Hour.where(user_id: current_user.id).group_by_day_of_week(:created_at, format: "%A").count
  end

end
