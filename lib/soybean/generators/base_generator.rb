module Soybean
  module Generators
    module BaseGenerator

      def fullpath(basedir)
        File.join(basedir, dir, filename)
      end

      def filename
        "#{name}.rb"
      end

    end
  end
end