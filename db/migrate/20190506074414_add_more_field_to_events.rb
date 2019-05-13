class AddMoreFieldToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :capacity, :integer , :default => 1
    add_column :events, :image, :string
  end
end
