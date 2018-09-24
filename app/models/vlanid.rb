class Vlanid < ApplicationRecord
    validates :ip_address, {presence: true}
end
