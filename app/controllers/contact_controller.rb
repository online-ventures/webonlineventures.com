class ContactController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	def send_message
		ContactMailer.send_using(params).deliver unless params['honeypot'].present?
		respond_to do |format|
			format.json { render json: { status: 'success', message: 'We\'ve recieved your message.<br/> Someone will get back to you soon.'.html_safe} }
		end
	end
end
