# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    case env['REQUEST_PATH'] 
    when '/index'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en el Index </h1>']]
    when '/otro'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en otro landing! </h1>']]
    else
      [404, { 'Content-Type' => 'text/html' }, [File.read("404.html")]]
    end
  end
end
run MiPrimeraWebApp.new