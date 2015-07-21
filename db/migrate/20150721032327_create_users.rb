class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   "name"
      t.string   "email"
      t.datetime "created_at",        null: false
      t.datetime "updated_at",        null: false
      t.string   "password_digest"
      t.string   "remember_digest"
      t.boolean  "admin",             default: false
      t.string   "activation_digest"
      t.boolean  "activated",         default: false
      t.datetime "activated_at"
    end
  end
end
