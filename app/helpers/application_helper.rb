module ApplicationHelper

  def url_with_protocol(url)
    /^http/.match(url) ? url : "http://#{url}"
  end

  def format_to_dollar(integer)
    price = integer.to_s

    case price.size
    when 2
      price.insert(0, "0")
    when 1
      price.insert(0, "00")
    when 0
      price = "000"
    end

    price.insert((price.size - 2), ".").insert(0, "$")
  end

  def calculate_discount(price, deal_price)
    price - deal_price
  end

  def module_to_resource_type(obj)
    obj.class.to_s.slice((obj.class.to_s.rindex('::') + 2)..-1).downcase
  end
end
