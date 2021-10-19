class Conversiones
  @@respuesta = ""

  def romanos(data)
    return 'Numero invalido' unless data >= 1 && data <= 3999
    @@respuesta = ""
    @@respuesta = genera_busquedas(data)  
  end

  def numeros(data)
    romanos = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}
    numero = 0
    valor_auxiliar = 0

    data.chars.each do |chr|
    return 'Literal invalida' unless romanos.keys.include?(chr.to_sym)

      if valor_auxiliar != 0 && valor_auxiliar < romanos[chr.to_sym] 
        numero -= valor_auxiliar
        numero += (romanos[chr.to_sym] - valor_auxiliar)
      else
        numero += romanos[chr.to_sym]
      end
      valor_auxiliar = romanos[chr.to_sym]
    end
    numero
  end

  private 
    def make_hash(opcion,literal, literal2, literal3)
      hash = Hash.new 

      hash[1] = literal
      hash[2] = literal * 2
      hash[3] = literal * 3
      if opcion != 'miles'
        hash[4] = literal + literal2
        hash[5] = literal2
        hash[6] = literal2 + literal
        hash[7] = literal2 + (literal * 2)
        hash[8] = literal2 + (literal * 3)
        hash[9] = literal + literal3
      end
      hash
    end
  
  private 
    def encuentra_valor(hash, numero)
      hash.each do |llave, valor|
        if llave.to_s == numero
          return valor.to_s
        end 
      end
      ""
    end
  
  private 
    def genera_busquedas(data)
      data = data.to_s
      
      if data.length == 4
        @@respuesta += encuentra_valor(make_hash('miles','M', ' ',' '), data[data.length-4,1])
      end
      if data.length >= 3
        @@respuesta += encuentra_valor(make_hash('centenas','C', 'D','M'), data[data.length-3,1])
      end
      if data.length >= 2
        @@respuesta += encuentra_valor(make_hash('decenas','X', 'L','C'), data[data.length-2,1])
      end
      @@respuesta += encuentra_valor(make_hash('unidades','I', 'V','X'), data[data.length-1,1])
    end
end

numero_romano = Conversiones.new
p numero_romano.romanos(14)
p numero_romano.numeros('XIV')
