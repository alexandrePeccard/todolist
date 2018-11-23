class MailsController < ApplicationController
  def index
  	@emails = Mail.all
  end

  def destroy
    @email_id = params.permit(:id)
    @email_id = @email_id[:id]
    Mail.delete(@email_id)

    respond_to do |format|
    	format.html { redirect_to mail_url }
      format.js { @email_id }
     end
  end
end
