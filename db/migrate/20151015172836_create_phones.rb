class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
        t.column :number, :string
        t.column :contact_id, :integer
    end
  end
end
