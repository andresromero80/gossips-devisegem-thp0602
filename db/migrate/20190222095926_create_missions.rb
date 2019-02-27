class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.string :title
      t.string :theme
      t.text :program
      t.text :context
      t.text :objectif
      t.text :description
      t.text :partner
      t.string :start
      t.string :end
      t.string :duration
      t.string :frequence
      t.text :public
      t.text :numpeople
      t.text :type_action
      t.text :finance
      t.text :evaluation
      t.string :sector
      t.string :geolevel
      t.string :commune
      t.string :deplevel
      t.text :plan
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
