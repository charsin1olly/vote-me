class CreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :party
      t.integer :age
      t.string :politics
      t.integer :votes

      t.timestamps
    end
  end
end
