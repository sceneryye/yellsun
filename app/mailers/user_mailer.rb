#encoding:utf-8
class UserMailer < ActionMailer::Base
  async = true
  
  default from: "佐康茶<cs@iotps.com>"


  def user_email(addr,subject)
  	mail(:to => addr, :subject => subject)
  end

end
