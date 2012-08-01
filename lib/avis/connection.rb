
module Avis

  class Connection

    attr_reader :socket

    def initialize(socket)
      @socket = socket
    end

    class << self
      def connect(host='127.0.0.1', port=8003)
        socket = Socket.tcp(host, port)
        new(socket)
      end
    end

    def send(message)
      write(message)
      read
    end

    def write(message)
      encoded = message.encode
      header = [encoded.length + 1, message.class::CODE].pack('NC')
      socket.write(header + encoded)
    end

    def read
      header = socket.read(5)
      size, code = header.unpack('NC')
      message = socket.read(size - 1)

      Registry[code].decode(message)
    end

  end

end
