module Ebanx
  module Command
    class TransferRetrieve < Command
      def initialize(params)
        @params         = params
        @request_method = :post
        @request_action = 'transfer/retrieve'
        @response_type  = :json
      end

      def validate
        validate_presence_either [:transfer_code, :uid, :external_reference, :settlement_code]
      end
    end
  end
end
