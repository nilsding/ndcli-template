require "thor"

module $class$
  class CLI < ::Thor
    desc "console", "Start a dev console"
    def console
      Pry.start
    end

    desc "start", "Start this app"
    def start
      require "$name$/application"
      $class$::Application.new.start
    end
  end
end
