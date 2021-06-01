class SignUp
    include ActiveModel::Model
    attr_accessor :name, :email, :phone, :fiscal_number, :address, :post_code, :city, :password, :trip_id

    def save
        @trip = Trip.where(id: trip_id).first
        ActiveRecord::Base.transaction do
        user = User.create(email: email, password: password)
        add_errors(user.errors) if user.invalid?
        user.save!
        client = Client.create(name: name, email: email, phone: phone, fiscal_number: fiscal_number, address: address, post_code: post_code, city: city, user_id: user.id)
        add_errors(client.errors) if client.invalid?
        client.save!
        end
    rescue ActiveRecord::RecordInvalid => exception
        return false
    end

    private

    def add_errors(model_errors)
        model_errors.each do |attribute, message|
        errors.add(attribute, message)
        end
    end
end