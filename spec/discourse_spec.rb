# frozen_string_literal: true

require_relative './pages/discourse_page'

describe 'Acessar a Pagina' do
  before do
    @discoursePage = DiscoursePage.new
  end

  it 'visitar' do
    visit 'https://www.discourse.org/'

    @discoursePage.demo
    @discoursePage.scroll('1000')
    @discoursePage.print_closed

    x = 0

    category = %w[uncategorized discourse videos gaming movies tech general sports school]

    category.each do |c|
      find_all('.category-' + c + '').each do |el|
        o = el.find('.link-bottom-line')
        o.find('.badge-wrapper')
        
        # .find(:xpath, '//span[contains(text(), ' + c + ')]').text
        # aqui = el.find('.badge-category')
        # puts aqui + 'aqui'
        # i=0
        # if c= aqui.text
        #   i+=i
        #   puts i
        # end
      end
    end

    @discoursePage.scroll('-1000')
    @discoursePage.print_first_views

    sleep 10
  end
end
