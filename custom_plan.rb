require 'zeus/rails'

class CustomPlan < Zeus::Rails

  # def my_custom_command
  #  # see https://github.com/burke/zeus/blob/master/docs/ruby/modifying.md
  # end

  def default_bundle_with_test_env
    ::Rails.env = 'test'
    ENV['RAILS_ENV'] = 'test'
    default_bundle
  end

  def test_rake
    prerake
    rake
  end

end

Zeus.plan = CustomPlan.new
