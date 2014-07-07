require 'spec_helper'

describe ValidationsController do

  describe "GET 'phone'" do

    it "retains number as Fixnum" do
      get 'phone', {
          format: :json,
          number: 1234567890
      }
      binding.pry
      expect(JSON.load(response.body)['number_class']).to eq 'Fixnum'
    end

    it "retains number as String" do
      get 'phone', {
          format: :json,
          number: '1234567890'
      }
      response.should be_success
      expect(JSON.load(response.body)['number_class']).to eq 'String'
    end
  end

end
