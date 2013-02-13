class CreateExhibitiorCategories < ActiveRecord::Migration
  def change
    create_table :exhibitior_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
