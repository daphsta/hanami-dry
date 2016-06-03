require 'spec_helper'
require_relative '../../../../apps/admin/controllers/clubs/index'

describe Admin::Controllers::Clubs::Index do
  let(:action) { Admin::Controllers::Clubs::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
