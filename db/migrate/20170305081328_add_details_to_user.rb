class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :string, :after => "email"
    add_column :users, :lastname, :string, :after => "firstname"
    add_column :users, :project, :string, :after => "lastname"
  end
end
