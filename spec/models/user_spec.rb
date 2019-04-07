require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "名前の表示" do
    let(:params) {{name: 'satou'}}
    # let(:params) {{name: 'satou', age: 1}}
    # let(:params1) {{name: 'satou', age: 15}}
    # let(:params2) {{name: 'satou', age: 30}}

    it '年齢１：ユーザーの名前が取得できること' do
      params.merge!(age: 1)
      user = User.new(params)
      expect(user.disp_name).to eq "satouちゃん"
    end

    it '年齢１５：ユーザーの名前が取得できること' do
      params.merge!(age: 15)
      user = User.new(params)
      expect(user.disp_name).to eq "satou君"
    end

    it '年齢２０：ユーザーの名前が取得できること' do
      params.merge!(age: 30)
      user = User.new(params)
      expect(user.disp_name).to eq "satouさん"
    end
    
    it '年齢−１：ユーザーの名前が取得できること' do
      params.merge!(age: -1)
      user = User.new(params)
      expect(user.disp_name).to eq "不正な数値です"
    end
  end
  
end
