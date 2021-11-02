class IdentityListSerializer < ActiveModel::Serializer
  attributes :id, :name
  def name
    I18n.t(object.gender)
  end
end
