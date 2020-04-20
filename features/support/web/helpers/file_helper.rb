# frozen_string_literal: true

class FileHelper
  class << self
    def read_file(path)
      JSON.parse(File.read(path), object_class: OpenStruct)
    end
  end
end
