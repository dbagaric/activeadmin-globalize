require 'active_admin/views/components/status_tag'

module ActiveAdmin
  module Globalize
    module IndexTableFor
      def translation_status
        column I18n.t("active_admin.globalize.translations") do |obj|
          locales = []
          obj.translations.pluck(:locale).each do |t|
            locales << "<span class=\"status_tag\">#{t.to_s}</span>"
          end
          locales.join(" ").html_safe
        end
      end
    end
  end
end

