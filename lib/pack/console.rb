module Pack
  class Console
    include Mixlib::CLI
    
    banner "Usage: pack (options)"
    
    option :help,
      short: "-h",
      long: "--help",
      description: "Show this message",
      on: :tail,
      boolean: true,
      show_options: true,
      exit: 0
    
    option :version,
      short: "-v",
      long: "--version",
      description: "Show pack version",
      boolean: true,
      proc: lambda {|v| puts "Pack: #{::Pack::VERSION}"},
      exit: 0
    
    def run
    end
  end
end
