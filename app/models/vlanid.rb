class Vlanid < ApplicationRecord
    validates :ip_address,
              :use,            {presence: true,
                                length: {maximum: 20}}
    validates :location,
              :control_number,
              :user,           {length: {maximum: 20}}
end
