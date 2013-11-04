module PocketRailsHelpers
  module ViewHelpers
    def pocket_button(link, options={})
      content_tag :span, link + options.to_param
    end
  end
end
