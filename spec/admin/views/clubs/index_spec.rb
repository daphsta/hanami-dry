require 'spec_helper'
require_relative '../../../../apps/admin/views/clubs/index'

describe Admin::Views::Clubs::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/admin/templates/clubs/index.html.erb') }
  let(:view)      { Admin::Views::Clubs::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
