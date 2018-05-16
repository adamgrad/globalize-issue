require 'rails_helper'

RSpec.describe Article, type: :model do
  let!(:article) { create(:article) }

  it "doesn't change updated_at" do
    I18n.locale = :pl
    article.update_attributes({})
    expect(article.previous_changes).to be_empty
  end

end
