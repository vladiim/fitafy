class Simple < Mustache
  self.template_path = File.dirname("#{Dir.pwd}/app/assets/templates/test.mustache.haml")

  def hello
  	"yo"
  end

  def world
  	"Boom!"
  end
end