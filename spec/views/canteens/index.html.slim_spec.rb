# frozen_string_literal: true

require_relative "../../spec_helper"

describe "canteens/index" do
  let(:user) { create(:user) }
  let(:canteens) do
    [
      create(:canteen),
      create(:canteen)
    ]
  end

  before do
    allow(controller).to receive(:current_user) { User.new }
    assign(:user, user)
    assign(:canteens, canteens)

    render
  end

  it "lists canteens" do
    expect(rendered).to include(canteens[0].name)
    expect(rendered).to include(canteens[1].name)
  end
end
