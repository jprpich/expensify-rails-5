require 'rails_helper'

feature 'visiting the homepage' do
  scenario 'the visitor sees the welcome text' do
    visit root_path
    expect(page).to have_text("Últimos 6 Meses")
  end
end
