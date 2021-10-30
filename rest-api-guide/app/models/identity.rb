class Identity < ApplicationRecord
    enum gender: ["male", "female", "prefer_not_to_say", "other"]
end
