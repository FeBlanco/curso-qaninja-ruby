require_relative "../../app/bank"

describe ContaPoupanca do
  describe "Saque" do
    context "quando o valor é positivo" do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00)
        @cp.saca(200.00)
      end
      it "então atualiza saldo" do
        expect(@cp.saldo).to eql 798.00
      end
    end

    context "quando o saldo é zero" do
      before(:all) do
        @cp = ContaPoupanca.new(0.00)
        @cp.saca(100.00)
      end
      it "então exibe mensagem" do
        expect(@cp.mensagem).to eql "Saldo insuficiente para saque :("
      end
      it "E o saldo final com zeros" do
        expect(@cp.saldo).to eql 0.00
      end
    end

    context "quando o saldo é insuficiente" do
      before(:all) do
        @cp = ContaPoupanca.new(100.00)
        @cp.saca(101.00)
      end
      it "então exibe mensagem" do
        expect(@cp.mensagem).to eql "Saldo insuficiente para saque :("
      end
      it "E o saldo permanece conforme o valor inicial" do
        expect(@cp.saldo).to eql 100.00
      end
    end

    context "quando o valor do saque é maior que o limite por transação" do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00)
        @cp.saca(501.00)
      end
      it "Então exibe mensagem" do
        expect(@cp.mensagem).to eql "Limite máximo por saque é de R$ 500"
      end
      it "E o saldo permanece conforme o valor inicial" do
        expect(@cp.saldo).to eql 1000.00
      end
    end
  end
end
