require 'rails_helper'

describe UserAuthenticator do # use describe here for the class name
  describe "#perform" do # use decribe here for the method name
    context 'when code is incorrect' do  # use context for each test case
      it 'should raise an error' do
        authenticator = described_class.new('sample_code')
        expect{ authenticator.perform }.to raise_error( UserAuthenticator::AuthenticationError )
        expect(authenticator.user).to be_nil
      end
    end
  end
end