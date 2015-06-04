module Peek
  module Views
    class Host < View
      # Returns Peek::Views::Host
      def initialize
        @hostname = hostname
      end

      def hostname
        `hostname`
      end
    end
  end
end
