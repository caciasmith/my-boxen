require 'spec_helper'

describe 'atom::theme' do
  let(:title)  { 'example' }

  it do
    should include_class('atom')

    should contain_package('example').with({
      :ensure   => 'latest',
      :provider => 'apm'
    })
  end
end
