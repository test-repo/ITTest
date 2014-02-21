class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,   :null => false, :limit => 150, :unique => true
      t.string :phone,   :null => false, :limit => 30
      t.string :name,    :null => false, :limit => 35
      t.string :last_name, :limit => 35
      t.timestamps
    end
    add_index :users, :email
  end
end
