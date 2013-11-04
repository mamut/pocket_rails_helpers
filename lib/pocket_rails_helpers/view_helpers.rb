module PocketRailsHelpers
  module ViewHelpers
    def pocket_button(options={})
      link = options.fetch(:link) { nil }
      style = options.fetch(:style) { 'vertical' }
      align = options.fetch(:align) { 'left' if options[:style] == 'horizontal' }
      pocket = {}
      pocket['save-url'] = link if link.present?
      pocket['pocket-count'] = style if style.present?
      pocket['pocket-align'] = align if align.present?
      link_to 'Pocket', 'https://getpocket.com/save', class: 'pocket-btn', data: pocket
    end
  end
end
