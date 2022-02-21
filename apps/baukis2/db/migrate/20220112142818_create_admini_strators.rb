class CreateAdminiStrators < ActiveRecord::Migration[6.0]
  def change
    create_table :admini_strators do |t|
      t.string :email, null: false
      t.string :hashed_password
      t.boolean :suspended, null: false, default: false

      t.timestamps
    end
    add_index :admini_strators, 'LOWER(email)', unique: true
  end
end
