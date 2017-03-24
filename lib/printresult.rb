class PrintResult
  def show_match(clothes)
    puts "Мы подобрали вам шикарный лук: "
    puts "Головной убор: #{clothes.pick_headwear}"
    puts "Верхняя одежда: #{clothes.pick_outwear}"
    puts "Штаны: #{clothes.pick_pants}"
    puts "Обувь: #{clothes.pick_footwear}"
  end
end