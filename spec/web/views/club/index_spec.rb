require 'spec_helper'
require_relative '../../../../apps/web/views/club/index'

describe Web::Views::Club::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/club/index.html.erb') }
  let(:view)      { Web::Views::Club::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
