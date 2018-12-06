# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Technician, type: :model do
  describe 'associations' do
    specify { expect(subject).to have_many(:tickets) }
    specify { expect(subject).to belong_to(:ride) }
  end
end
