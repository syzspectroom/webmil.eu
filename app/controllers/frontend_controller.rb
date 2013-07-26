class FrontendController < ApplicationController
  before_filter :set_locale

  private
    def set_locale
      parsed_locale = request.host.split('.').last.to_sym
      locale = :uk if [:ua, :uk].include? parsed_locale
      I18n.locale = locale || I18n.default_locale
    end
end