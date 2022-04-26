class NotifyMsjForAccessJob < ApplicationJob
  def perform(convict_id)
    @convict = Convict.find(convict_id)
    MonSuiviJusticeApi::ConvictInvitation.update(@convict.msj_id)
  end
end
