class AddDefaultRoleToUser < ActiveRecord::Migration
  def up
  change_column :users, :role, :integer, default: 0,  null: false
  end

  def down
  change_column :users, :role, :integer, default: nil
  end


end

# up cuando se hace una migracion lo deja como up, cuando se hace rollback se hace como down
