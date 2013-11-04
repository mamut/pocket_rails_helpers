require 'pocket_rails_helpers/options_parser'

module PocketRailsHelpers
  module ViewHelpers
    def pocket_button(options={})
      pocket = OptionsParser.new(options).call
      link_to 'Pocket', 'https://getpocket.com/save', class: 'pocket-btn', data: pocket
    end
  end
end
