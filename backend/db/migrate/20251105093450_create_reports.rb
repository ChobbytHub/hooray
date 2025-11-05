class CreateReports < ActiveRecord::Migration[8.1]
  def change
    create_table :reports do |t|
      t.references :user, null: false, foreign_key: true
      t.date :report_date
      t.text :content_work
      t.text :content_learning
      t.text :content_issue

      t.timestamps
    end

    add_index :reports, [:user_id, :report_date], unique: true
  end
end
