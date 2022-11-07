require 'json'
require 'rest-client'

class Translate
    def initialize

        @endpoint = 'https://api.cognitive.microsofttranslator.com'
        @path = '/translate?api-version=3.0'
        @headers = {"Content-Type" =>'application/json'}

        puts "Digite o texto original: "
        @text= gets.chomp
        puts "Digite o idioma do texto traduzido - [pt-br, en, fr, de...]: "
        @to = gets.chomp

        @params= "&to=#{@to}"
                
        puts 'Traduzindo o texto...'
        body_hash = translate_text
        time_now_str = Time.now.strftime('%d.%m.%y--%H-%M-%S-%p')
        File.open("#{time_now_str}.txt","w+") do |line|
            line.write("Original[#{body_hash[:original_language_req].upcase}]: " + @text)
            line.write("\n")
            line.write("Traduzido[#{@to.upcase}]: " + body_hash[:translated_text_req])
        end

        puts "Original[#{body_hash[:original_language_req].upcase}]: " + @text
        puts "Traduzido[#{@to.upcase}]: " + body_hash[:translated_text_req]

    end

    def translate_text
        content = '[{"Text" : "' + @text + '"}]'
        body_req = send_req(content)

        original_language_req = body_req[0]['detectedLanguage']['language']
        translated_text_req = body_req[0]['translations'][0]['text']

        hash_req = {:original_language_req => original_language_req, :translated_text_req => translated_text_req}
        return hash_req
    end

    private def send_req(content)
        constructed_url = @endpoint + @path + @params
        res = RestClient.post "#{constructed_url}", content, @headers

        return JSON.parse(res)
    end

end

tr = Translate.new