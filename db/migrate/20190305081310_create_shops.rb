class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.text :title
      t.text :site
      t.text :city
      t.text :companyphone
      t.text :yml
      t.text :inn
      t.text :fio
      t.text :address
      t.text :phone

      t.timestamps
    end
  end
end
