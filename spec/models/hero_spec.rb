require 'spec_helper'

describe Hero do

  describe "model" do
    it "has a valid factory" do
      h = FactoryGirl.create(:hero)
      expect h.name.to
    end
  end

end
