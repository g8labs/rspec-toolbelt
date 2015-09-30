module RSpec
  module Toolbelt
    module Matchers
      module HTTP

        RSpec::Matchers.define :be_unauthorized do
          match do |response|
            response.status == 401
          end
        end

        RSpec::Matchers.define :be_forbidden do
          match do |response|
            response.status == 403
          end
        end

        RSpec::Matchers.define :be_created do
          match do |response|
            response.status == 201
          end
        end

        RSpec::Matchers.define :be_unprocessable_entity do
          match do |response|
            response.status == 422
          end
        end

        RSpec::Matchers.define :be_not_found do
          match do |response|
            response.status == 404
          end
        end

        RSpec::Matchers.define :be_no_content do
          match do |response|
            response.status == 204
          end
        end

        RSpec::Matchers.define :be_accepted do
          match do |response|
            response.status == 202
          end
        end

      end

    end

  end

end
