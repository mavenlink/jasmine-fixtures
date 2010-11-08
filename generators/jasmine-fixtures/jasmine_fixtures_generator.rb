class JasmineFixturesGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.directory "spec/javascripts/helpers"
      m.file "spec/javascripts/helpers/jasmine-fixture-helper.js", "spec/javascripts/helpers/jasmine-fixture-helper.js"
      m.file "spec/javascripts/helpers/jasmine-fixture-loader.js", "spec/javascripts/helpers/jasmine-fixture-loader.js"

      m.directory "spec/support"
      m.file "spec/support/jasmine_fixture_generator_methods.rb", "spec/support/jasmine_fixture_generator_methods.rb"
      
      m.directory "spec/controllers"
      m.file "spec/controllers/jasmine_fixture_creators.rb", "spec/controllers/jasmine_fixture_creators.rb"
      m.readme "INSTALL"
    end
  end
end
