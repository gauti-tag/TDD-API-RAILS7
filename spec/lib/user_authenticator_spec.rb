require 'rails_helper'

describe UserAuthenticator do # use describe here for the class name
  describe "#perform" do # use decribe here for the method name

  let(:authenticator) { described_class.new('sample_code') } # use let for variables, describe as authenticator = described_class.new('sample_code')
  subject { authenticator.perform } # use subject for method calls
  let(:error) { double("Saywer::Resource", error: "bad_verification_code")}

    context 'when code is incorrect' do  # use context for each test case
      it 'should raise an error' do # Describe the actual test example here
        expect{ subject }.to raise_error( UserAuthenticator::AuthenticationError )
        expect(authenticator.user).to be_nil
      end
    end

    context 'when code is correct' do
      let(:user_data) do
        {
          login: 'Tiehoule',
          url: 'http://gautier.tiehoule.com',
          avatar_url: 'http://gautier.tiehoule.com/avatar',
          name: 'Gautier',
        }
      end
      before do
        allow_any_instance_of(Octokit::Client).to receive(:exchange_code_for_token).and_return('validateaccesstoken')
        allow_any_instance_of(Octokit::Client).to receive(:user).and_return(user_data)
      end
      it 'should save the user when does not exist' do
        expect { subject }.to change { User.count }.by(1)
      end
    end
  end
end