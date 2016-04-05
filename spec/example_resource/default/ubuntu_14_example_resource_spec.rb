require 'spec_helper'

describe 'Ubuntu 14.04, example_library_test::integration' do
  cached :ubuntu_14_example_library_run do
    runner = ChefSpec::SoloRunner.new step_into: 'example_resource'
    runner.converge 'example_library_test::integration'
  end

  context 'compiling the test recipe' do
    it 'creates example_resource[my example resource]' do
      expect(ubuntu_14_example_library_run).to \
        create_example_resource 'my example resource'
    end

    it 'creates file[/hello.txt]' do
      expect(ubuntu_14_example_library_run).to create_file '/hello.txt'
    end
  end
end
