class JasmineFixturesGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.directory "spec/javascripts/helpers"
      m.file "spec/javascripts/helpers/jasmine-fixture-helper.js", "spec/javascripts/helpers/jasmine-fixture-helper.js"
      m.file "spec/javascripts/helpers/jasmine-fixture-loader.js", "spec/javascripts/helpers/jasmine-fixture-loader.js"
      m.file "spec/javascripts/helpers/jasmine-fixture-matchers.js", "spec/javascripts/helpers/jasmine-fixture-matchers.js"
      
      m.directory "spec/spec_helpers"
      m.file "spec/spec_helpers/fixture_generator_methods.rb", "spec/spec_helpers/fixture_generator_methods.rb"
      
      m.readme "INSTALL"
    end
  end
end