# encoding: utf-8

class Student
  attr_accessor :imie, :nazwisko, :wiek, :numer_indeksu, :przedmioty

  def initialize(imie, nazwisko, wiek, numer_indeksu)
    @imie, @nazwisko, @wiek, @numer_indeksu, @przedmioty = imie, nazwisko, wiek, numer_indeksu, []

    @@studenci ||= []
    @@studenci << self
  end

  def zapisz_na!(przedmiot)
    @przedmioty << przedmiot
  end

  def self.wypisz_liste
    puts 'Lista studentów'
    @@studenci.each { |s| puts "#{s.imie} #{s.nazwisko}\t #{s.wiek} lat\t #{s.numer_indeksu}\t #{s.przedmioty.map { |p| p.nazwa}.join(', ')}" }
  end
end

class Przedmiot
  attr_accessor :nazwa, :skrot

  def initialize(skrot, nazwa)
    @skrot, @nazwa = skrot, nazwa

    @@przedmioty ||= []
    @@przedmioty << self
  end

  def self.wypisz_liste
    puts 'Przedmioty'
    @@przedmioty.each { |s| puts "#{s.skrot}\t #{s.nazwa}" }
  end
end

am  = Przedmiot.new(:am, 'Analiza matematyczna')
zaj = Przedmiot.new(:zaj, 'Zarządzanie jakością')

janek = Student.new('Jan', 'Kowalski', 20, 9876)
ania = Student.new('Anna', 'Nowak', 20, 9876)

janek.zapisz_na!(am)
janek.zapisz_na!(zaj)
ania.zapisz_na!(am)

Przedmiot.wypisz_liste
Student.wypisz_liste