class ContactController < ApplicationController
	def send param, two, three
		ContactMailer.send_using(params).deliver
		respond_to do |format|
			format.json { render json: { status: 'success', message: 'We\'ve recieved your message.<br/> Someone will get back to you soon.'} }
		end
	end
end
