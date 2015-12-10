class AddConvocationToAssigns < ActiveRecord::Migration
  def change
    add_column :assigns, :convocation_id, :integer
  end
end
