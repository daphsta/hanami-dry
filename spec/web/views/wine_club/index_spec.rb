require 'spec_helper'
require_relative '../../../../apps/web/views/wine_club/index'

describe Web::Views::WineClub::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/wine_club/index.html.erb') }
  let(:view)      { Web::Views::WineClub::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
