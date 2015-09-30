module RSpec
  module Toolbelt
    module Matchers
      module JSON

        RSpec::Matchers.define :match_json do |pattern|
          match do |response|
            JsonExpressions::Matcher.new(pattern) =~ ::JSON.parse(response.body)
          end
        end

      end

    end

  end

end
