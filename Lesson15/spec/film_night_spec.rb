#encoding: UTF-8

require "film"

describe Film do
  let(:film) { Film.new("Фанатик", "Генри Бин", 2001,) }
  describe "#name" do
    it { expect(film.title).to eq "Фанатик" }
  end

  describe "#title" do
    it { expect(film.director).to eq "Генри Бин" }
  end

  describe "#year" do
    it { expect(film.year).to eq 2001 }
  end

  describe "#full_info" do
    it { expect(film.full_info).to eq "Генри Бин - Фанатик - (2001)" }
  end
end
