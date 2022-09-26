class AddColumnToTodo < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :finished, :boolean, default: false
  end
end
