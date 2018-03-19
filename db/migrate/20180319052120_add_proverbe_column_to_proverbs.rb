class AddProverbeColumnToProverbs < ActiveRecord::Migration[5.1]
  def change
    add_column :proverbs, :proverb, :string
  end
end
