class List < ApplicationRecord
  has_many :list_steps, dependent: :destroy
end
