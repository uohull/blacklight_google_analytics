module BlacklightGoogleAnalytics
  module ControllerExtraHead
    extend ActiveSupport::Concern
    included do
      before_action do |controller|
        controller.content_for :head, render_to_string(:partial => '/layouts/google_analytics')
      end
    end
  end
end
