class Api::V1::IdentitiesController < ApplicationController
    before_action :set_locale
    def index
        @identity = Identity.all
        render json: @identity, each_serializer: IdentityListSerializer, status: :ok
    end

    private
    def set_locale
       I18n.locale = request.headers[:lang] || I18n.default_locale
    end
end
