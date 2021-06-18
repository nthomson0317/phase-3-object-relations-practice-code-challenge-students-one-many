class CreateCohortRowInStudentsTable < ActiveRecord::Migration[5.2]
  def change
    change_table :students, :cohort_id do |t|
      t.belongs_to :cohort
    end
  end
end
