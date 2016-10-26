json.extract! perfil, :id, :name, :direcion, :altitud, :longitud, :description, :mision, :vision, :user_id, :created_at, :updated_at
json.url perfil_url(perfil, format: :json)