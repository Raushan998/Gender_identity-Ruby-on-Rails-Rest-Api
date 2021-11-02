class Identity < ApplicationRecord
    extend Mobility
    translates :gender, type: :string
end
