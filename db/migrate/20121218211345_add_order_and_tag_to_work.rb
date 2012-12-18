class AddOrderAndTagToWork < ActiveRecord::Migration
  def change
    add_column :works, :order, :decimal
    add_column :works, :tag, :string
  end
end
