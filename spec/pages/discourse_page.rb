# frozen_string_literal: true

class DiscoursePage
  include Capybara::DSL

  def demo
    click_link 'Demo'
    page.switch_to_window(page.windows.last)
  end

  def scroll(y)
    i = 0
    loop do
      i += 2
      page.execute_script 'window.scrollBy(0, ' + y + ')'
      sleep 1
      break if i == 8
    end
end

  def print_closed
    page.all('.closed').each do |el|
      texto = el.find('.title').text
      puts texto
    end
  end

  def print_first_views
    find('th[data-sort-order="views"]').click
    view = first('.raw-topic-link').text
    puts view
  end
end
