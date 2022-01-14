class Lease < ApplicationRecord
    belongs_to :apartment, dependent: :nullify
    belongs_to :tenant, dependent: :destroy
end
