class ContactMailer < ActionMailer::Base
  default to: "nick@webonlineventures.com"
  default subject: "New lead from the Online Ventures website!"

  def send_using lead
  	@lead = lead
	mail(from: @lead['email'], subject: "New lead (#{@lead['name']}) from the Online Ventures website!")
  end
end
