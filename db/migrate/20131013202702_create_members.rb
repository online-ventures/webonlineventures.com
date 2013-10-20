class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
	  t.string :gravatar_email
	  t.string :bio

      t.timestamps
    end
  end
end
