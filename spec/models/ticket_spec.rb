# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ticket, type: :model do
  describe 'associations' do
    specify { expect(subject).to belong_to(:ride) }
    specify { expect(subject).to belong_to(:technician) }
  end
end
