require 'pocket_rails_helpers/options_parser'

describe PocketRailsHelpers::OptionsParser do

  let(:parsed) { described_class.new(options).call }

  describe "with empty options" do

    let(:options) { {} }

    it "doesn't set 'save-url'" do
      expect(parsed).not_to have_key 'save-url'
    end

    it "defaults 'pocket-count' to 'vertical'" do
      expect(parsed['pocket-count']).to eq 'vertical'
    end

    it "doesn't set 'pocket-align'" do
      expect(parsed).not_to have_key 'pocket-align'
    end
  end

  describe "with 'link' option set" do

    let(:options) { { link: 'http://example.com' } }

    it "sets the 'save-url' to given value" do
      expect(parsed['save-url']).to eq 'http://example.com'
    end
  end

  describe "with 'style' set to 'horizontal'" do

    let(:options) { { style: 'horizontal' } }

    it "sets 'pocket-count' to the passed value" do
      expect(parsed['pocket-count']).to eq 'horizontal'
    end

    it "defaults the 'pocket-align' value to 'left'" do
      expect(parsed['pocket-align']).to eq 'left'
    end
  end

  describe "with 'align' set to 'right'" do

    let(:options) { { align: 'right' } }

    it "sets pocket-align to the passed value" do
      expect(parsed['pocket-align']).to eq 'right'
    end
  end
end
