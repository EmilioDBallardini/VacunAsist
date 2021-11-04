class CreateNoticia < ActiveRecord::Migration[6.1]
  def change
    create_table :noticia do |t|
      t.string :img_url
      t.string :pie_de_pagina
      t.string :cuerpo
      t.string :epigrafe
      t.string :titulo
      t.string :subtitulo

      t.timestamps
    end
  end
end
