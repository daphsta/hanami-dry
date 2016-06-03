require 'spec_helper'
require_relative '../../../../apps/web/controllers/club/index'

describe Web::Controllers::Club::Index do
  let(:action) { Web::Controllers::Club::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
