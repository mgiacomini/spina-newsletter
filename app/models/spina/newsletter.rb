module Spina
  class Newsletter < ActiveRecord::Base
    validates :name, :email, presence: true

    scope :ordered, -> { order('created_at DESC') }
  end
end
