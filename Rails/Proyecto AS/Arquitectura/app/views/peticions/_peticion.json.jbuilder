json.extract! peticion, :id, :Tipo_de_documento, :Nombre, :Apellido, :Direccion, :Correo, :Pais, :ciudad, :tipoSolicitud, :Detalle, :created_at, :updated_at
json.url peticion_url(peticion, format: :json)
