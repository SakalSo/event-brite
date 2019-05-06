class AddFieldsToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :start_at, :datetime
    add_column :events, :description, :text
    #if you want to manually add a field to here.
    #run db:migrate:reset to change the schema.rb file


  end
end
