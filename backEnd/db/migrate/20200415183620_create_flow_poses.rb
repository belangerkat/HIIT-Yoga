class CreateFlowPoses < ActiveRecord::Migration[6.0]
  def change
    create_table :flow_poses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :yoga_flow, null: false, foreign_key: true
      t.references :pose, null: false, foreign_key: true

      t.timestamps
    end
  end
end
