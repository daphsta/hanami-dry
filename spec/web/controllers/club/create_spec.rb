require 'spec_helper'
require_relative '../../../../apps/web/controllers/club/create'

describe Web::Controllers::Club::Create do
  let(:action) { Web::Controllers::Club::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
