class Expense < ApplicationRecord
  belongs_to :user, optional: true
  enum transaction_type: { purchase: 0, withdrawl: 1, transfer: 2, payment: 3 }
  enum category: { restaurants: 0, grocery: 1, car: 2, services: 3, home: 4, education: 5, fun: 6, travel: 7 }

end
