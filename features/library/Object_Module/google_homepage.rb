module Google_home_page

  def gmail_link
    $browser.link(text: "Gmail")
  end

end

module Images

  def images_link
    $browser.link(text: "Görseller")
  end

end

module SearchBox

  def searchBox
    $browser.find_element(name: 'q')
  end

end

module SearchButton

  def searchButton
    $browser.find_element(class: "gNO89b")
  end

end

module SearchResultList

  def searchResultList
    $browser.find_element(tag: "h3")
  end

end

