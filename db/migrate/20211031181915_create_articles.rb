# Las migraciones se encargan de modificar la estructura de los datos, tablas, columnas, relaciones


class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title     # campos de la tabla
      
      t.timestamps        # dos columnas que guardan cuando se creo y cuando se modifico un registro
    end
  end
end
