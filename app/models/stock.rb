class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
            publishable_token: 'Tpk_edfb295eb1ed46b0b556672771ed66c7',
            secret_token: 'Tsk_f18550602a53476f96905091fd9c440c',
            endpoint: 'https://sandbox.iexapis.com/v1')
        return client.price(ticker_symbol)
    end
end
