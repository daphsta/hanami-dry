require 'spec_helper'
require_relative '../../../../apps/web/views/club/create'

describe Web::Views::Club::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/club/create.html.erb') }
  let(:view)      { Web::Views::Club::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
