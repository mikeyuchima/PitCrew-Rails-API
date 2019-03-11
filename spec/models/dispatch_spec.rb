# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Dispatch, type: :model do
  describe 'associations' do
    specify { expect(subject).to have_many(:rides) }
  end

  describe 'properties' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
  end
end
