module ObjectMixin
  def set_property(obj, prop_name, prop_value)
    obj.send("#{prop_name}=",prop_value)
  end
end
