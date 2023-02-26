require 'rails_helper'

RSpec.describe "CancelDeleteRecords", type: :system do
  before do
    driven_by(:rack_test)
  end


  it 'deletes application successfully' do
    visit '/applications'

    click_on 'delete'

    click_on 'cancel'
  end
end