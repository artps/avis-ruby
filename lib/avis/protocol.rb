
module Avis

  class Request
    CODE = 1

    include Message

    required :n, :int32, 1
  end

  class Response
    CODE = 2

    include Message

    repeated :message, :string, 1
  end

  class Error
    CODE = 3

    include Message

    repeated :message, :string, 1
  end

end
