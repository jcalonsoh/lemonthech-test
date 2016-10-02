# Escriba una función/método que dado un número entero,
# entregue su representación en palabras,
# Ej. 145 ­> “ciento cuarenta y cinco”
#
# This module is the answer 2 of Lemontech test
# module logic take from
# http://stackoverflow.com/questions/19445003/using-ruby-convert-numbers-to-words
module NumbersToWords
  extend ActiveSupport::Concern

  def self.number(int)
    numbers_to_name = {
        1000000 => "millon",
        1000 => "mil",
        900 => "nuevecientos",
        800 => "ochocientos",
        700 => "sietecientos",
        600 => "seiscientos",
        500 => "quinientos",
        400 => "cuatrocientos",
        300 => "trescientos",
        200 => "doscientos",
        100 => "cien",
        90 => "noventa",
        80 => "ochenta",
        70 => "setenta",
        60 => "sesenta",
        50 => "cincuenta",
        40 => "cuarenta",
        30 => "treinta",
        20 => "veinte",
        19 => "diecinueve",
        18 => "dieciocho",
        17 => "diecisiete",
        16 => "dieciseis",
        15 => "quince",
        14 => "catorce",
        13 => "trece",
        12 => "doce",
        11 => "once",
        10 => "diez",
        9 => "nueve",
        8 => "ocho",
        7 => "siete",
        6 => "seis",
        5 => "cinco",
        4 => "cuatro",
        3 => "tres",
        2 => "dos",
        1 => "uno"
    }
    str = ""
    numbers_to_name.each do |num, name|
      if int.zero?
        return str
      elsif int.to_s.length == 1 && int / num > 0
        return str + name.to_s
      elsif int < 100 && int / num > 0
        return str + name.to_s if (int % num).zero?
        return str + "#{name} " + number(int % num)
      elsif int > 100 && int < 200
        return "CIENTO " + number(int - 100)
      elsif int / num > 0 && int > 200
        return str + number(int / num) + " #{name} " + number(int % num)
      end
    end
  end
end
