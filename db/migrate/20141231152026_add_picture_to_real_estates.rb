class AddPictureToRealEstates < ActiveRecord::Migration
  def change
    add_column :real_estates, :picture, :string
  end
end
