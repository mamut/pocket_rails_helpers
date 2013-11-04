require 'pocket_rails_helpers/options_parser'

describe PocketRailsHelpers::OptionsParser do

  describe "link parsing" do

    it "returns no save-url option if no link given" do
      options = {}
      parsed = described_class.new(options).call
      expect(parsed).not_to have_key 'save-url'
    end

    it "returns save-url with link url if link given" do
      options = { link: 'http://example.com' }
      parsed = described_class.new(options).call
      expect(parsed['save-url']).to eq 'http://example.com'
    end
  end

  describe "style parsing" do

    it "defaults to vertical if none given" do
      options = {}
      parsed = described_class.new(options).call
      expect(parsed['pocket-count']).to eq 'vertical'
    end

    it "sets pocket-count to passed value if given" do
      options = { style: 'horizontal' }
      parsed = described_class.new(options).call
      expect(parsed['pocket-count']).to eq 'horizontal'
    end
  end

  describe "alignment parsing" do

    it "sets no alignment if none given" do
      options = {}
      parsed = described_class.new(options).call
      expect(parsed).not_to have_key 'pocket-align'
    end

    it "defaults alignment to left if style is horizontal" do
      options = { style: 'horizontal' }
      parsed = described_class.new(options).call
      expect(parsed['pocket-align']).to eq 'left'
    end

    it "sets pocket-align to passed value if given" do
      options = { align: 'right' }
      parsed = described_class.new(options).call
      expect(parsed['pocket-align']).to eq 'right'
    end
  end
end
