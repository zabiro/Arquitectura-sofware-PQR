class CreatePeticions < ActiveRecord::Migration[5.1]
  def change
    create_table :peticions do |t|
      t.string :Tipo_de_documento
      t.string :Nombre
      t.string :Apellido
      t.string :Direccion
      t.string :Correo
      t.string :Pais
      t.string :ciudad
      t.string :tipoSolicitud
      t.text :Detalle

      t.timestamps
    end
  end
end
