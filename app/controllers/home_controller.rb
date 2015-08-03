#encoding:utf-8
class HomeController < ApplicationController
  before_filter :find_user
	# layout 'magazine'
	layout 'yellsun'

	def index

		@title = "亿心集团"
		#@home = Ecstore::Home.where(:supplier_id=>nil).last
		@goods = Ecstore::Good.where(:marketable=>'true').all
		if signed_in?
		   redirect_to params[:return_url] if params[:return_url].present?
		end
	end

	def blank
		@return_url = params[:return_url]
		render :layout=>nil
	end

	def topmenu
		render :layout=>nil
	end
	
	def subscription_success
		@title = "亿心集团"
	end

end
