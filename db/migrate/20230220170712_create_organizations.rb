# frozen_string_literal: true

class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.integer :orgID
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
