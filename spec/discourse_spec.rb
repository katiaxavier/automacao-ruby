# frozen_string_literal: true

require_relative './pages/discourse_page'

describe 'Access the page' do
  before do
    @discoursePage = DiscoursePage.new
  end

  it 'should check topics ' do
    visit 'https://www.discourse.org/'

    @discoursePage.demo
    @discoursePage.scroll('1000')
    @discoursePage.print_closed
    @discoursePage.print_categorys_items
    @discoursePage.scroll('-1000')
    @discoursePage.print_first_views
  end
end
