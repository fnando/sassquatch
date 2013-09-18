module Sassquatch
  class CLI < Thor
    check_unknown_options!

    def self.exit_on_failure?
      true
    end

    desc "install", "Install Sassquatch files"
    def install
      generator = Generator.new
      generator.destination_root = Dir.pwd
      generator.invoke_all
    end

    desc "version", "Display Sassquatch version"
    map %w(-v --version) => :version
    def version
      say "Sassquatch #{Sassquatch::VERSION}"
    end
  end
end
