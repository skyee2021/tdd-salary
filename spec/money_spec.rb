require 'money'
require 'employ'


RSpec.describe Money do
  context "月薪加班費" do
    let(:employ) { Employ.new(true) }
    it "平日或休息日" do
      money = Money.new(30000, employ: employ)
      # money.calc_to_hr(30000)
      money.add_w(4)
      expect(money.pay).to be 752
    end

    it "平日或休息日" do
      money = Money.new(45000, employ: employ)
      # money.calc_to_hr(30000)
      money.add_w(7.5)
      expect(money.pay).to be 2218
    end

    it "假日" do
      money = Money.new(30000, employ: employ)
      money.add_h(5)
      expect(money.pay).to be 1000
    end

    it "假日" do
      money = Money.new(50000, employ: employ)
      money.add_h(8.5)
      expect(money.pay).to be 1907
    end

    it "假日" do
      money = Money.new(50000, employ: employ)
      money.add_h(12)
      expect(money.pay).to be 3748
    end

  end
end
