class AddEventRefToEventApplications < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_applications, :event, foreign_key: true
  end
end
