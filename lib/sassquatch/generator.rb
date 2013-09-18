module Sassquatch
  class Generator < Thor::Group
    include Thor::Actions

    desc "Install the Sassquatch files"

    def self.source_root
      File.expand_path("../../../app/assets/stylesheets", __FILE__)
    end

    def copy_files
      copy_file "_sassquatch.scss", "sassquatch/_sassquatch.scss"
      directory "sassquatch", "sassquatch/sassquatch"
    end
  end
end
