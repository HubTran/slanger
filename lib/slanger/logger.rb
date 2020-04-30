module Slanger
  module Logger
    def log(msg)
      puts Oj.dump(msg, mode: :compat)
    end
    extend self
  end
end
