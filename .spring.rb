begin
  require 'spring/watcher/listen'
  Spring::Watcher::Listen.class_eval do
    def base_directories
      %w(app config lib test vendor)
        .uniq.map { |path| Pathname.new(File.join(root, path)) }
    end
  end
rescue LoadError
end
