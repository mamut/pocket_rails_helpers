require 'pocket_rails_helpers/options_parser'

describe PocketRailsHelpers::OptionsParser do

  describe "link parsing" do

    it "returns no save-url option if no link given"
    it "returns save-url with link url if link given"
  end

  describe "style parsing" do

    it "defaults to vertical if none given"
    it "sets pocket-count to passed value if given"
  end

  describe "alignment parsing" do

    it "sets no alignment if none given"
    it "defaults alignment to left if style is horizontal"
    it "sets pocket-align to passed value if given"
  end
end
