require "rspec"
require_relative "imc.rb"

RSpec.describe IMC do

  describe ".initialize" do
    context "when I create with weight 70 and height 1.70" do
      it "does create an object instance from IMC" do
        #A RRANGE

        #A CTION
        @imc_object = IMC.new(70, 1.70)
        #A SSERT
        expect(@imc_object).to be_instance_of(IMC)
      end
    end
  end

  describe ".calculate_imc" do
    context "when receive weight 70 and measure 1,70" do
      it "does return 24" do
        # A RRANGE
        @imc_object = IMC.new(70, 1.70)
        # A CTION
        imc_number = @imc_object.calculate_imc
        # A SSERT
        expect(imc_number).to eq(24);
      end
    end

    context "when receive weight 50 and measure 1,20" do
      it "does return 35" do
        # A RRANGE
        @imc_object = IMC.new(50, 1.20)
        # A CTION
        imc_number = @imc_object.calculate_imc
        # A SSERT
        expect(imc_number).to eq(35);
      end
    end

  end

    describe ".get_imc_result" do
      context "when receive weight 70 and measure 1,70" do
        it "does return normal" do
          # A RRANGE
          @imc_object = IMC.new(70, 1.70)
          @imc_object.calculate_imc
          # A CTION
          imc_result = @imc_object.get_imc_result
          #A SSERT
          expect(imc_result).to eq("normal")
        end
      end
    end

    describe ".is_overweight" do
      context "when receive weight 70 and measure 1,70" do
        it "does return false" do
          # A RRANGE
          @imc_object = IMC.new(70, 1.70)
          @imc_object.calculate_imc
          # A CTION
          result = @imc_object.is_overweight
          #A SSERT
          expect(result).to eq(false)
        end
      end
    end

end
