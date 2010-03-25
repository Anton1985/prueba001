class CreateMuestras < ActiveRecord::Migration
  def self.up
    create_table :muestras do |t|
      t.string :nom
      t.string :dato

      t.timestamps
    end
  end

  def self.down
    drop_table :muestras
  end
end
