class CreateSpinaNewsletterTable < ActiveRecord::Migration
  def change
    create_table :spina_newsletters do |t|
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end
