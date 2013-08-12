class Order < ActiveRecord::Base
	state_machine initial: :draft do
    state :draft, value: 0
    state :submitted, value: 1
    state :completed, value: 2
    state :shipped, value: 3
  end
end
