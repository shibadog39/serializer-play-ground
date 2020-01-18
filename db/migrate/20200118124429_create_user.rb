class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
    end

    create_table :posts do |t|
      t.references :user, null: false
      t.string :title, null: false
      t.string :content, null: false
    end
  end
end
