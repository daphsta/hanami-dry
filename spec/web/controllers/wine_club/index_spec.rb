require 'spec_helper'
require_relative '../../../../apps/web/controllers/wine_club/index'

describe Web::Controllers::WineClub::Index do
  let(:action) { Web::Controllers::WineClub::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
