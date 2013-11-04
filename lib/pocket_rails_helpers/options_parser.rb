module PocketRailsHelpers
  class OptionsParser

    attr_reader :options

    def initialize(options)
      @options = options
    end

    def call
      {}.tap do |parsed|
        parsed['save-url'] = link unless link.nil?
        parsed['pocket-count'] = style unless style.nil?
        parsed['pocket-align'] = align unless align.nil?
      end
    end

    private

    def link
      options.fetch(:link) { nil }
    end

    def style
      options.fetch(:style) { 'vertical' }
    end

    def align
      options.fetch(:align) { 'left' if options[:style] == 'horizontal' }
    end
  end
end
