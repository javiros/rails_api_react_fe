# frozen_string_literal: true

module Api
  module V1
    # Messages controller
    class MessagesController < ApplicationController
      def index
        render json: Message.all
      end

      def create
        message = Message.create(message_params)
        render json: message
      end

      def destroy
        Message.destroy(params[:id])
      end

      def update
        message = Message.find(params[:id])
        message.update_attributes(message_params)
        render json: message
      end

      private

      def message_params
        params.require(:message)
              .permit(:id, :email, :first_name, :last_name, :amount)
      end
    end
  end
end
