class AddSlugToSpace < ActiveRecord::Migration
  def change
    add_column(:spaces, :slug, :string)
  end
end
