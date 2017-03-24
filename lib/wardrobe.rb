class Wardrobe
  attr_accessor :outwear, :headwear, :footwear, :pants

  def initialize(current_temperature)
    @current_temperature = current_temperature
  end

  def find_match(files_with_clothes)
    choice = []

    for i in files_with_clothes
      cloth = File.readlines(i).map(&:chomp)
      temperature_range = cloth[2].split(", ")
      temperature_range.map! { |element| element.gsub("+", "")}
      if (temperature_range[0].to_i..temperature_range[1].to_i).include?(@current_temperature)
        cloth.delete_at(1)
        choice << cloth
      end
    end
    choice = choice.sample
    return choice.flatten.join(" - ")
  end

  def pick_headwear
    headwear_files = []
    headwear_files = Dir["data/headwear/*.txt"].each {|file_name| headwear_files << file_name}
    @headwear = find_match(headwear_files)

  end

  def pick_outwear
    outwear_files = []
    outwear_files = Dir["data/outwear/*.txt"].each {|file_name| outwear_files << file_name}
    @outwear = find_match(outwear_files)
  end

  def pick_pants
    pants_files = []
    pants_files = Dir["data/pants/*.txt"].each {|file_name| pants_files << file_name}
    @pants = find_match(pants_files)
    @pants
  end

  def pick_footwear
    footwear_files = []
    footwear_files = Dir["data/footwear/*.txt"].each {|file_name| footwear_files << file_name}
    @footwear = find_match(footwear_files)
  end
end