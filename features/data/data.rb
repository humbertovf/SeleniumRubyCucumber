# frozen_string_literal: true

class DataRecord
  def data_record(fileName)
    data_record = YAML.load(File.read("/Users/humbertoquijada/Documents/RubyBDD/SeleniumRubyCucumber/features/data/#{fileName}.yaml"))
    return data_record
  end
end
