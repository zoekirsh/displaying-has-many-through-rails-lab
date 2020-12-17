class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def readable_time
    dt = self.appointment_datetime
    dt.strftime('%B %e, %Y at %H:%M')
  end
end
