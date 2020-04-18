# frozen_string_literal: true

require_relative './pages/trivago_page.rb'

describe 'Access the page' do
  before do
    @trivagoPage = TrivagoPage.new
  end

  it 'should perform search' do
    visit 'http://www.trivago.com.br/'
   
    @trivagoPage.search_destination('Natal')
    @trivagoPage.search
    @trivagoPage.select_room('Individual')
    @trivagoPage.sort_by('Somente distância')
    @trivagoPage.print_information('Sossego No Alecrim')
    @trivagoPage.location
    @trivagoPage.view_amenities
    @trivagoPage.print_amenities
  end
end
