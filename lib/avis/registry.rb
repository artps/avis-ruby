
module Avis

  class Registry
    include Singleton

    def initialize
      @messages = {}
    end

    def << (klass)
      @messages[klass::CODE] = klass
    end

    def [] (code)
      @messages[code]
    end

    class << self
      def << (klass)
        instance << klass
      end

      def [] (code)
        instance[code]
      end
    end
  end

end
