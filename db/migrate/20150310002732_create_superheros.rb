class CreateSuperheros < ActiveRecord::Migration
  def change
    create_table :superheros do |t|
      t.string :name
      t.string :ability
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :occupation
      t.string :city
      t.string :publisher      

      t.timestamps null: true
    end
  end
end
