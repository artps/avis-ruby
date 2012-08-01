
module Avis

  module Message

    module ClassMethods
    end

    def self.included(klass)
      klass.extend(ClassMethods)
      klass.send(:include, Beefcake::Message)

      Avis::Registry << klass
    end

  end

end
