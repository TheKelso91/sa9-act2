class StringWrapper
    def initialize(str)
        @str = str
    end

    def reverse
        @str.reverse
    end

    def upcase
        @str.upcase
    end

    def downcase
        @str.downcase
    end
end

RSpec.describe StringWrapper do
  describe "#reverse" do
    it "reverses the string" do
      str = StringWrapper.new("hello")
      expect(str.reverse).to eq("olleh")
    end
  end

  describe "#upcase" do
    it "upcases the string" do
      str = StringWrapper.new("hello")
      expect(str.upcase).to eq("HELLO")
    end
  end

  describe "#downcase" do
    it "downcases the string" do
      str = StringWrapper.new("HELLO")
      expect(str.downcase).to eq("hello")
    end
  end
end
