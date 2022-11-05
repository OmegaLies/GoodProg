require "rspec"
require_relative "../hashtag"

describe Hashtag do
  it "Захватывается 1 хэштег" do
    expect(Hashtag.from_string("Lovin' Beats Hatin. #McDonalds")).to eq "#McDonalds"
  end
  it "Захватывается несколько хэштегов" do
    expect(Hashtag.from_string("Будете у нас на #Колыме? Нет, уж лучше #вы_к_нам!")).to eq "#Колыме #вы_к_нам"
  end
  it "Захватывается хэштег на русском" do
    expect(Hashtag.from_string("Будете у нас на #Колыме")).to eq "#Колыме"
  end
  it "Захватывается хэштег с подчеркиваниями" do
    expect(Hashtag.from_string("Нет, уж лучше #вы_к_нам!")).to eq "#вы_к_нам"
  end
  it "Захватывается хэштег с минусами" do
    expect(Hashtag.from_string("Нет, уж лучше #вы-к-нам!")).to eq "#вы-к-нам"
  end
  it "Не захватывается знак вопроса" do
    expect(Hashtag.from_string("Будете у нас на #Колыме?")).to eq "#Колыме"
  end
  it "Не захватывается восклицательный знак" do
    expect(Hashtag.from_string("Нет, уж лучше #вы_к_нам!")).to eq "#вы_к_нам"
  end


end
