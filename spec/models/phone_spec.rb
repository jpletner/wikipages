require_relative '../rails_helper'

describe Phone do
	it { expect validate_presence_of :number }
	it {expect validate_presence_of :contact_id }

	it {expect belong_to :contact}
end
