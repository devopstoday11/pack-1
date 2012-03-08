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
    
    # Startup the console.
    def run
      get_cli_options
    end
    
    # Parses the cli options and handles invalids with sanity.
    def get_cli_options
      ARGV << "--help" if ARGV.size == 0
      begin
        self.parse_options
      rescue OptionParser::InvalidOption => e
        puts "#{e}\n"
      end
    end
    
  end
end
