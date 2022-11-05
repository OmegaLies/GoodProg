#encoding: UTF-8

require "rspec"
require_relative "../lib/film"

describe Film do
  it "Возвращается название" do
    expect(Film.new("Фанатик", "Генри Бин", 2001,).title).to eq "Фанатик"
  end
  it "Возвращается режиссер" do
    expect(Film.new("Шум", "Генри Бин", 2007,).director).to eq "Генри Бин"
  end
  it "Возвращается год" do
    expect(Film.new("Хористы", "Кристоф Барратье", 2004,).year).to eq 2004
  end
  it "Возвращается полная информация" do
    expect(Film.new("Зеленая миля", "Фрэнк Дарабонт", 1999,).full_info).to eq "Фрэнк Дарабонт - Зеленая миля - (1999)"
  end
end
