class Todo < ApplicationRecord
  validates :name, presence: true

  scope :ordered, -> { order(id: :desc) }

  # after_create_commit  -> { broadcast_prepend_to 'todos' }
  # after_update_commit  -> { broadcast_replace_to "todos" }
  # after_destroy_commit -> { broadcast_remove_to "todos" }

  broadcasts_to ->(todo) { "todos" }, inserts_by: :prepend
end
