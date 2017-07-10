class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.json :properties
      t.virtual :color, type: :string, as: "JSON_UNQUOTE(JSON_EXTRACT(properties, '$.color'))"
      t.virtual :size_id, type: :integer, as: "JSON_UNQUOTE(JSON_EXTRACT(properties, '$.size_id'))", stored: true
      t.timestamps
    end
    add_index :products, :size_id
  end
end
