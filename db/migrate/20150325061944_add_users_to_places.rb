class AddUsersToPlaces < ActiveRecord::Migration
  def change
    add_reference :places, :user, index: true
  end
end
