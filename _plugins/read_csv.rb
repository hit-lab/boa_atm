
module CSVDataReader
  require 'csv'

  class Generator < Jekyll::Generator
    def generate(site)
      #dir = config['csv_data_source'] || '_csv'
      dir = "_csv"
      base = File.join(site.source, dir)
      return unless File.directory?(base) && (!site.safe || !File.symlink?(base))

      entries = Dir.chdir(base) { Dir['*.csv'] }
      entries.delete_if { |e| File.directory?(File.join(base, e)) }

      entries.each do |entry|
        path = File.join(site.source, dir, entry)
        next if File.symlink?(path) && site.safe

        key = sanitize_filename(File.basename(entry, '.*'))
        file_data = CSV.read(path, :headers => true)

        data = Hash.new        
        data['content'] = file_data.to_a[1..-1]
        data['content_hash'] = file_data.map(&:to_hash)
        data['keys'] = file_data.headers
        data['rows'] = data['content'].size
        data['cols'] = file_data.headers.size

        csv_data = Hash.new
        csv_data[key] = data
       
        site.data.merge!(csv_data){ |shared_key| raise "csv and data named \"#{shared_key}\"" }
      end
    end
   
    private

    # copied from Jekyll
    def sanitize_filename(name)
      name = name.gsub(/[^\w\s_-]+/, '')
      name = name.gsub(/(^|\b\s)\s+($|\s?\b)/, '\\1\\2')
      name = name.gsub(/\s+/, '_')
    end
  end
end
