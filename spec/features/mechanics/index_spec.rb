require 'rails_helper'

RSpec.describe 'mechanic index page' do
  it 'has a page header' do
    visit "/mechanics"
    expect(page).to have_content("All Mechanics")
  end

  it 'lists mechanics and their attributes' do
    mechanic1 = Mechanic.create!(name: 'Gunther Guyman', years_of_experience: 10)
    mechanic2 = Mechanic.create!(name: 'Melody Midi', years_of_experience: 13)

    visit "/mechanics"

    expect(page).to have_content("Gunther Guyman")
    expect(page).to have_content("Years of Experience: 10")
    expect(page).to have_content("Melody Midi")
    expect(page).to have_content("Years of Experience: 13")
  end

  it 'tells you the average mechanic years of experience' do
    mechanic1 = Mechanic.create!(name: 'Gunther Guyman', years_of_experience: 10)
    mechanic2 = Mechanic.create!(name: 'Melody Midi', years_of_experience: 12)

    visit "/mechanics"
    save_and_open_page
    expect(page).to have_content("11")
  end
end
