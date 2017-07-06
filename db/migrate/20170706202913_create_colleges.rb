class CreateColleges < ActiveRecord::Migration[5.1]
  def change
    create_table :colleges do |t|
      t.string :city, null: false
      t.string :inst_url
      t.string :name, null: false
      t.string :npc_url
      t.string :ope_id, null: false
      t.string :state, null: false
      t.string :unit_id
      t.index :ope_id, unique: true
      t.timestamps
    end
  end
end
