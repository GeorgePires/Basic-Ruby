class Esportista
    def competir
      puts "participando de uma competição"
    end
end
  
class JogadorDeFutebol < Esportista
    def correr
      puts "correndo atrás da bola"
    end
end
  
class Maratonista < Esportista
    def correr
      puts "percorrendo o circuito"
    end
end
#Cria instancia para cada objeto.
esportistas = [JogadorDeFutebol.new, Maratonista.new]
  
esportistas.each do |esportista|
    esportista.competir
    esportista.correr
end