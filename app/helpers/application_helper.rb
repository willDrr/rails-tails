module ApplicationHelper
  def navigation_items
    [
      {body: 'Some route', href: 'some href' },
      {body: 'Some route', href: 'some href' },
      {body: 'Some route', href: 'some href' },
    ]
  end

  def navigation_class(path)
    if current_page?(path)
      "bg-gray-900 text-white px-3 py-2 rounded-md text-sm font-medium"
    else
      "text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium"
    end
  end

  def navigation_aria(path)
    if current_page?(path)
      "page"
    else
      "false"
    end
  end
end
