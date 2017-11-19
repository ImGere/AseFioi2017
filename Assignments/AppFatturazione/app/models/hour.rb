class Hour < ApplicationRecord
  belongs_to :client
  belongs_to :user
  belongs_to :invoices, optional: true

  validates_presence_of :date, :start_time, :end_time, :description, :user_id, :client_id

  def addToInvoice(invoice)
    self.invoice_id = invoice.id
  end
end
