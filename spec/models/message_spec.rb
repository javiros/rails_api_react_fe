# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::Message do
  let(:message) { Api::V1::Message.new(email: email, first_name: first_name, last_name: last_name, amount: nil) }
  let(:email) { 'test@test.com' }
  let(:first_name) { 'Paul' }
  let(:last_name) { 'Reilly' }

  context 'when is expected' do
    before { message }
    it { is_expected. to respond_to(:email) }
    it { is_expected. to respond_to(:first_name) }
    it { is_expected. to respond_to(:last_name) }
    it { is_expected. to respond_to(:amount) }
  end

  context 'when all attributes are present' do
    it 'is expected to be valid' do
      expect(message).to be_valid
    end
  end

  context 'when first name is missing' do
    let(:first_name) { '' }
    it 'is expected to be invalid' do
      expect(message).to_not be_valid
    end
  end

  context 'when email is invalid' do
    let(:email) { 'blah' }
    it 'is expected to be invalid' do
      expect(message).to_not be_valid
    end
  end
end
