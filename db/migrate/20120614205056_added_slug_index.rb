class AddedSlugIndex < ActiveRecord::Migration
	def change
		change_table :works do |t|	
		t.index :slug, unique: true
		end
	end
end
