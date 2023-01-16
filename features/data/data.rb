# frozen_string_literal: true

class Data
  def data_record(fileName)
    data_record =YAML.load(File.read("C:/Users/hugarcia/RubymineProjects/SeleniumRubyCucumber/features/data/#{fileName}.yaml"))
    return data_record
  end
end
