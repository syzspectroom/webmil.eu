class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :name
      t.text :email
      t.text :subject
      t.text :body

      t.timestamps
    end
  end
end
