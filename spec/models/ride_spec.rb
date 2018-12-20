# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ride, type: :model do
  describe 'associations' do
    specify { expect(subject).to belong_to(:dispatch) }
    specify { expect(subject).to have_many(:technicians) }
    specify { expect(subject).to have_many(:tickets) }
  end
end
