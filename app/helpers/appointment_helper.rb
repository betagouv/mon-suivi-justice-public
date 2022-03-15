module AppointmentHelper
  def days_from_now_badge(appointment)
    content_tag :span, class: "inline-flex items-center px-3 py-1.5 rounded-full text-xs font-bold bg-green-600 text-white absolute -top-3.5" do
      if appointment.days_from_now < 0
        t(".days_ago", days: appointment.days_from_now.abs)
      elsif appointment.days_from_now == 0
        t(".today")
      else
        t(".days_from_now", days: appointment.days_from_now)
      end
    end
  end
end
