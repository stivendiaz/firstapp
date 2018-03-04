#asi se crea un exeption

begin
    1 / 0
  rescue ZeroDivisionError => e
    puts "¿Por que divides por cero?"
    puts e.backtrace.join("\n") # imprime el stacktrace
end


#como crear errores propios

class PermissionDeniedError < StandardError
    attr_reader :action
  
    def initialize(message, action)
      # Call the parent's constructor to set the message
      super(message)
  
      # Store the action in an instance variable
      @action = action
    end
  end
  
  # Cuando alguien trate de borrar algo sin permiso podrías 
  # hacer algo así:
  raise PermissionDeniedError.new("Permission Denied", :delete)