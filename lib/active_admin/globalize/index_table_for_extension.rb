require 'active_admin/views/components/status_tag'

module ActiveAdmin
  module Globalize
    module IndexTableFor
      def translation_status
        column I18n.t("active_admin.globalize.translations") do |obj|
          obj.translations.pluck(:locale).each do |t|
            '<span class="status_tag">%s</span>' % t.to_s
          end.join(" ").html_safe
        end
      end
    end
  end
end

