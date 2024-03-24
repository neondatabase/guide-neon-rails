class AddCountryToAuthors < ActiveRecord::Migration[7.1]
  def change
    add_column :authors, :country, :string
  end
end
