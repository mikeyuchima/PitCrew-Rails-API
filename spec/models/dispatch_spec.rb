# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Dispatch, type: :model do
  describe 'associations' do
    specify { expect(subject).to have_many(:rides) }
  end
end
