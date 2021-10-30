class IdentityListSerializer < ActiveModel::Serializer
  attributes :id, :name

  def name
    if object.gender == "male"
      I18n.t('male')
    elsif object.gender == "female"
      I18n.t('female')
    elsif object.gender == "prefer_not_to_say"
       I18n.t('prefer_not_to_say')
    else
      I18n.t('other')
    end
  end
end
