# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Technician, type: :model do
  describe 'associations' do
    specify { expect(subject).to have_many(:tickets) }
    specify { expect(subject).to belong_to(:ride) }
  end

  describe 'properties' do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
  end
end
