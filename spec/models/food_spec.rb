require 'rails_helper'

RSpec.describe Food do 

  describe 'class attributes' do 

    before(:each) do
      @info = {gtinUpc: "070560970600", description: "SWEET POTATOES", brandOwner: "Target Stores", ingredients: "SWEET POTATOES"}
      @food = Food.new(@info)
    end

    it {expect(@food).to be_an_instance_of(Food)} 
    it {expect(@food).to have_attributes({gtinUpc: "070560970600"})}
    it {expect(@food).to have_attributes({description: "SWEET POTATOES"})}
    it {expect(@food).to have_attributes({brand_owner: "Target Stores"})}
    it {expect(@food).to have_attributes({ingredients: "SWEET POTATOES"})}
  end 

end