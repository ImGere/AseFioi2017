class ChartsController < ApplicationController
  def total_hours
    render json: Hour.where(user_id: current_user.id).group(:is_fatturata).count
  end
  def total_invoices_amount_per_day
    invoices_hid = Hour.where(user_id: current_user.id).uniq.pluck(:invoice_id)
    @invoices = Invoice.where(id: invoices_hid)
    render json: @invoices.pluck(:id, :total_amount)
  end
  def total_invoices_amount_per_day
    @hours = Hour.where(user_id: current_user.id).to_a
    @clients = Client.where(user_id: current_user.id).to_a
    invoices_hid = @hours.uniq.pluck(:invoice_id)
    @invoices = Invoice.where(id: invoices_hid)
    render json: @invoices.pluck(:id, :total_amount)
  end
end
