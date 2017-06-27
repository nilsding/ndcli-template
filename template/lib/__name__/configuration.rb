require "confstruct"
require "yaml"

module $class$
  module Configuration
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def config
        @config ||= load_config
      end

      def env
        @env ||= (ENV["ENVIRONMENT"]).downcase
      end

      private

      def load_config
        config = YAML.load_file(File.expand_path("../../../config/$name$.yml", __FILE__))[env]
        Confstruct::Configuration.new(config)
      end
    end
  end
end
