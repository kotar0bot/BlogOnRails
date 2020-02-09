class AddUsersToPosts < ActiveRecord::Migration[6.0]
  def up
    execute 'DELETE FROM posts;'
    add_reference :posts, :user, index: true
  end
  
  def down
    remove_reference :posts, :user, index: true
  end
end
