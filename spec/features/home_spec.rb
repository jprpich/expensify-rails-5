require 'rails_helper'

feature 'visiting the homepage' do
  scenario 'the visitor sees expensify general statistics' do
    visit root_path
    expect(page).to have_text("Últimos 6 Meses")
    expect(page).to have_text("Por Categoría")
    expect(page).to have_text("Por Día")
    expect(page).to have_text("Acumulado")
  end
end
