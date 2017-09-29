######
# Implementa le seguenti funzioni come richiesto nel commento che le precede
######

# Restituisce una stringa che dice "Benvenuto"
def welcome_message
  "Benvenuto"
end

# Restituisce n! (fattoriale)
def factorial(n)
  if n >= 1 
      return (1..n).reduce(:*)
  elsif n == 0
    return 1
  end
  return "Error"
end

# Restituisce la stringa più lunga in un array di stringhe
def find_longest_string(array)
  array.max_by { | x | x.length }
end

# Restituisce true se l'array contiene altri array (es. [[1],2,3] => true)
def has_nested_array?(array)
  found = false
  if array != nil
    array.each do |element|
      if element.is_a?(Array)
        found = true
      end
    end
    return found
  end
end

# Conta il numero di caratteri maiuscoli in una stringa
def count_upcased_letters(string)
  numeroUppercase = 0
  string.chars.to_a.each do |valore|
    if(valore == valore.upcase)
      if(valore >= 'A' && valore <= 'Z')
        numeroUppercase+=1
      end
    end
  end
  numeroUppercase
end

# Converte un numero in numero romano
def to_roman(n)
  indice = [
    ["M", 1000], 
    ["CM", 900],
    ["D", 500],
    ["CD", 400],
    ["C", 100],
    ["XC", 90],
    ["L", 50],
    ["XL", 40],
    ["X", 10], 
    ["IX", 9],
    ["V", 5],
    ["IV", 4],
    ["I", 1], 
  ]
  number = ""
  indice.each do |i|
    lettera = i[0]
    valore =  i[1]
    number += lettera*(n / valore)
    n = n % valore
  end
  return number
end

######
# Completa l'implementazione delle seguenti classi seguendo quanto
# richiesto dai commenti.
######

class Point2D
  # costruisce un punto con coordinate (x,y)
  # nota che non e' necessario nessun controllo sul tipo di x e y
  def initialize(x, y)
    @x = x
    @y = y
  end

  # la classe punto deve avere rendere accessibili gli attributi `x` e `y`
  # IN SOLA LETTURA
  attr_reader :x, :y

  # la funzione `+` riceve come argomento un oggetto Point2D e restituisce un
  # nuovo oggetto Point2D che ha come coordinate la somma delle coordinate dei
  # due oggetti. (x1 + x2, y1 + y2)
  # la funzione non deve alterare lo stato interno dell'oggetto, ma restituire
  # un nuovo oggetto
  def + (point)
    return Point2D.new(self.x + point.x, self.y + point.y)
  end

  # Restituisce una rappresentazione testuale dell'oggetto punto, nella forma
  # "(x,y)", senza spazi.
  # ES: siano x = 1, y = 2.345, la funzione deve restituire "(1,2.345)"
  def to_s
    "(#{@x},#{@y})"
  end
end

require 'date' # necessario per l'uso della classe Date

class Book
  attr_accessor :title, :author, :release_date, :publisher, :isbn

  # Implementa il costruttore
  # dai un'occhiata a https://robots.thoughtbot.com/ruby-2-keyword-arguments
  def initialize(title:, author:, release_date:, publisher:, isbn:)
    @title= title
    @author= author
    @release_date= release_date
    @publisher= publisher
    @isbn= isbn
    @control={:title=>"valid", :author=>"valid", :release_date=>"valid", :publisher=>"valid", :isbn=>"valid"}
  end

  # requisiti perche' un libro sia considerato valido:
  # title deve essere una stringa (@title.class == String) non vuota
  # author deve essere una stringa non vuota
  # release_date deve essere un oggetto Date
  # publisher deve essere una stringa non vuota
  # isbn deve essere un Fixnum minore di 10**10 e maggiore di 10**9
  def valid?
    # Controllo di tutti i campi
    @control[:title]="not valid" unless (@title.is_a?(String) && !@title.empty?)
    @control[:author]="not valid" unless (@author.is_a?(String) && !@author.empty?)
    @control[:release_date]="not valid" unless (@release_date.is_a?(Date))
    @control[:publisher]="not valid" unless (@publisher.is_a?(String) && !@publisher.empty?)
    @control[:isbn]="not valid" unless (@isbn.is_a?(Fixnum) && @isbn <= 10**10 && @isbn >= 10**9)
    
    @control.each do |key, value|
        if value != "valid"
            return false
        end
    end
    return true
  end

  # restituisce un array di simboli.
  # Se l'oggetto e' valido, restituisce un vettore vuoto
  # Se non lo e', per ogni attributo che non e' valido, la chiave per
  # quell'attributo deve essere presente nel vettore, in qualsiasi ordine.
  # esempio: title e author non sono validi, restituisce [:title, :author]
  def errors
    arrayOfErrors=Array.new
    @control.each do |key, value| 
	   if value != "valid"
		  arrayOfErrors.insert(arrayOfErrors.count, key)
	   end
    end
    return arrayOfErrors
  end
end
