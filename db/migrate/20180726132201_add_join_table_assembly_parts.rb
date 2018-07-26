class AddJoinTableAssemblyParts < ActiveRecord::Migration[5.2]
  def change
    create_join_table :assemblies, :parts do |t|
      # t.index [:assembly_id, :part_id]
      # t.index [:part_id, :assembly_id]
      t.belongs_to :assembly, index: true
      t.belongs_to :part, index: true
    end
  end
end
