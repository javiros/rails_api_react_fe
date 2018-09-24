# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::MessagesController do
  let(:message) { Api::V1::Message.new(email: email, first_name: first_name, last_name: last_name, amount: nil) }
  let(:email) { 'test@test.com' }
  let(:first_name) { 'Paul' }
  let(:last_name) { 'Reilly' }

  before { message }

  it 'has a /api/v1/index route' do
    request.headers['Content-Type'] = 'application/vnd.api+json'
    get :index

    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response.status).to eq(200)
  end
end
