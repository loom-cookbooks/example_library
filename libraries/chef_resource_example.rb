require 'chef/resource/lwrp_base'

class Chef
  class Resource
    # Documentation!
    class Example < Chef::Resource::LWRPBase
      provides :example_resource

      self.resource_name = :example_resource
      actions :create
      default_action :create

      attribute :example_property, kind_of: String, default: 'hello'
    end
  end
end
