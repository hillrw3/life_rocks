class CreateMain < ActiveRecord::Migration
  def change
    create_table :mains do |t|
      t.string :reason
    end
    add_index :mains, :reason
  end
end
