# frozen_string_literal: true

class TrivagoPage
  include Capybara::DSL

  def search_destination(name)
    fill_in 'sQuery', with: name
    sleep 1
  end

  def search
    click_button 'Pesquisar'
  end

  def select_room(type)
    find('.dealform-button__head', text: 'Quarto').click
    find('.roomtype-btn__label', text: type).click
  end

  def sort_by(select)
    select(select, from: 'mf-select-sortby')
  end

  def print_information(hotels)
    @hotel = find('.pos-relative', text: hotels)

    hotel_name = @hotel.find('.item-link', text: hotels).text
    stars = @hotel.find('.rating-pill').text

    puts 'Nome: ' + hotel_name + ' Estrelas: ' + stars

    soffer_website = @hotel.find('.accommodation-list__partner--f7daf').text
    room_value = @hotel.find('.accommodation-list__price--52597').text
    puts 'Oferta da empresa: ' + soffer_website + ' Preço: ' + room_value
  end

  def location
    @hotel.find('.location', text: 'Natal').click
  end

  def view_amenities
    click_button '+ Visualizar todas as comodidades'
  end

  def print_amenities
    room_amenities = find('.all-amenities__group', text: 'Comodidades do quarto').find('.unordered-list').text
    puts 'Comodidades do quarto: ' + room_amenities
end
end
