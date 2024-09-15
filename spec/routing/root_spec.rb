require 'rails_helper'

RSpec.describe "Root routing", type: :routing do
  it "routes root to articles#home" do
    expect(get: "/").to route_to("articles#home")
  end
end