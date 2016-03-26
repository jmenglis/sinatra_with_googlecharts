Sequel.migration do
  change do
    create_table(:users) do
      primary_key :id
      String :email, :null=>false
      String :password, :null=>false
    end
    create_table(:graphs) do
      primary_key :id
      Integer :user_id, :null=>false
      String :graph_information, :text=>true, :null=>false
  end
end
