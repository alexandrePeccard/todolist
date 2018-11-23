class CreateMails < ActiveRecord::Migration[5.2]
  def change
    create_table :mails do |t|
      t.string :object
      t.string :body

      t.timestamps
    end
  end
end
