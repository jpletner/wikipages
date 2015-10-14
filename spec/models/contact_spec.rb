require_relative '../rails_helper'

describe Contact do
  it { should validate_presence_of :name }
end

#describe Contact do
# it "should validate the presence of a name" do
#     contact_name = Contact.new({:name => '' })
#     expect(contact_name.save).to eq false
#   end
#end