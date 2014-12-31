class CreateRealEstates < ActiveRecord::Migration
  def change
    create_table :real_estates do |t|
      t.float :price
      t.text :description
      t.string :state
      t.string :address
      t.float :longitude
      t.float :latitude
      t.string :kind
      t.references :user

      t.timestamps
    end
  end
end
