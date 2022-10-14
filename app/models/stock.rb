class Stock < ApplicationRecord
    def self.new_lookup(tickery_symbol)
        client = IEX::Api::Client.new(
            publishable_token: 'pk_50c02d24ce9b4a5b812e783d0c2903f0',
            secret_token: 'secret_token',
            endpoint: 'https://cloud.iexapis.com/v1'
          ) 
    return client.price(tickery_symbol)
    end
end
