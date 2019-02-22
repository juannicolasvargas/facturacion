class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :password, format: {with: /[A-Z]/,message: 'Debe ingresar una mayuscula'}, length: { minimum: 8,too_short: 'Debe tener 6 caracteres como minimo' }
  validates :password, format: {with: /[a-z]/,message: 'Debe ingresar una minuscula'}
  validates :password, format: {with: /\d/,message: 'Debe ingresar un numero'}
end
