# Patch applied from https://github.com/AlchemyCMS/alchemy_cms/blob/8a60a84cd75dfea7f3e72437a613a6916685a58b/spec/support/rspec-activemodel-mocks_patch.rb

# Manually applied the patch from https://github.com/jdelStrother/rspec-activemodel-mocks/commit/1211c347c5a574739616ccadf4b3b54686f9051f
if Gem.loaded_specs['rspec-activemodel-mocks'].version.to_s != "1.0.1"
  raise "RSpec-ActiveModel-Mocks version has changed, please check if the behaviour has already been fixed: https://github.com/rspec/rspec-activemodel-mocks/pull/10
If so, this patch might be obsolete-"
end
RSpec::ActiveModel::Mocks::Mocks::ActiveRecordInstanceMethods.class_eval do
  alias_method :_read_attribute, :[]
end
