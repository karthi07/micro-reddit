class Comments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :context

      t.timestamps
    end
  end
end
