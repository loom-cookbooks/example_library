require 'chef/provider/lwrp_base'

class Chef
  class Provider
    # Documentation!
    class Example < Chef::Provider::LWRPBase
      provides :example_resource if defined?(provides)

      use_inline_resources if defined?(use_inline_resources)

      def whyrun_supported?
        true
      end

      action :create do
        file '/hello.txt' do
          content new_resource.example_property
        end
      end
    end
  end
end
