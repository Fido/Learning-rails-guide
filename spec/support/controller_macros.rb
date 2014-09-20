module ControllerMacros
  def attributes_with_foreign_keys(*args)
    FactoryGirl.build(*args).attributes.delete_if do |key, val|
      %w{id type created_at updated_at}.member?(key)
    end
  end

  def set_session
    usuario = create(:usuario)
    session[:usuario_id] = usuario.id
  end

end