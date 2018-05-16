require 'rails_helper'

RSpec.describe Category, type: :model do
  let!(:category) { create(:category) }

  it "doesn't change updated_at" do
    I18n.locale = :pl
    category.update_attributes({})
    expect(category.previous_changes).to be_empty
  end
end
