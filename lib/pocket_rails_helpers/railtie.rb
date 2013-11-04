require 'pocket_rails_helpers/view_helpers'

module PocketRailsHelpers
  class Railtie < Rails::Railtie
    initializer "pocket_rails_helpers.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
