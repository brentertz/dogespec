require "rspec/core/formatters/documentation_formatter"
require "dogeify"

module Dogespec
  class Formatter < RSpec::Core::Formatters::DocumentationFormatter
    def initialize(output)
      super(output)
      @dogeifier = Dogeify.new
    end

    def passed_output(example)
      msg = dogeify(example.description.strip)
      success_color("#{current_indentation}#{msg}")
    end

    def pending_output(example, message)
      msg = "#{dogeify(example.description.strip)} (PENDING: #{dogeify(message)})"
      pending_color("#{current_indentation}#{msg}")
    end

    def failure_output(example, exception)
      msg = "#{dogeify(example.description.strip)} (FAILED: #{next_failure_index})"
      failure_color("#{current_indentation}#{msg}")
    end

    private

    def dogeify(such)
      @dogeifier.process(such)
    end
  end
end
