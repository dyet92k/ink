module ThemeKit
  class Template < Asset

    def initialize(plugin, type)
      @root = plugin.assets_path
      @dir = File.join(plugin.name, type)
      @exists = {}
    end

    def file(file, site)
      @file = file
      Pathname.new(file_path(site))
    end
  end
end