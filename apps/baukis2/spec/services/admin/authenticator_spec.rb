require 'rails_helper'

describe Admin::Authenticator do
  describe '#authenticate' do
    example '正しいパスワードならtrueを返す' do
      a = build(:admini_strator)
      expect(Admin::Authenticator.new(a).authenticate('pw')).to be_truthy
    end

    example '誤ったパスワードならfalseを返す' do
      a = build(:admini_strator)
      expect(Admin::Authenticator.new(a).authenticate('xy')).to be_falsey
    end

    example 'パスワード未設定ならfalseを返す' do
      a = build(:admini_strator, password: nil)
      expect(Admin::Authenticator.new(a).authenticate('nil')).to be_falsey
    end

    example '停止フラグが立っていてもtrueを返す' do
      a = build(:admini_strator, suspended: true)
      expect(Admin::Authenticator.new(a).authenticate('pw')).to be_truthy
    end
  end
end
