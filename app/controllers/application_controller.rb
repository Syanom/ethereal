class ApplicationController < ActionController::Base
  require 'browser/aliases'
  Browser::Base.include(Browser::Aliases)

  before_action :set_locale
  before_action :determine_variant

  def default_url_options
    { lang: (I18n.locale unless I18n.locale == I18n.default_locale) }
  end

  private

  def set_locale
    I18n.locale = I18n.locale_available?(params[:lang]) ? params[:lang] : I18n.default_locale
  end

  def determine_variant
    Rails.logger.info("session: #{session[:use_mobile]}")
    request.variant = browser.mobile? ? :mobile : :desktop
  end
end
