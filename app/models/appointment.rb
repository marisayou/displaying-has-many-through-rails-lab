class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def format_date_time
        t = self.appointment_datetime
        year = t.strftime('%Y')
        month = t.strftime('%B')
        day = t.strftime('%-d')
        hour = t.strftime('%-H')
        minute = t.strftime('%M')
        "#{month} #{day}, #{year} at #{hour}:#{minute}"
    end

    def patient_name
        self.patient.name
    end

    def patient_path
        "/patients/#{self.patient.id}"
    end

    def doctor_name
        self.doctor.name
    end

    def doctor_path
        "/doctors/#{self.doctor.id}"
    end
end
