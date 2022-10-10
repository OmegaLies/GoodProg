# Подключаем библиотеку для работы с классом Date
require 'date'

# Наш класс Пациент
class Patient
  # Конструктор — принимает на вход все данные и "раскладывает" их по полочкам:
  # соответствующим переменным экземпляра с @.
  def initialize(name, patronymic_name, family_name, date_of_birth, registration_address)
    @name = name
    @patronymic_name = patronymic_name
    @family_name = family_name
    @date_of_birth = Date.parse(date_of_birth)
    @registration_address = registration_address
  end

  # Метод name — геттер, который возвращает содержимое переменной экземпляра
  def name
    return @name
  end

  # Метод full_name — вычисляемое значение, возвращает строку, содержащую
  # фамилию и инициалы
  #
  # Венедиктов В.А.
  def full_name
    return "#{@family_name} #{@name[0]}.#{@patronymic_name[0]}."
  end

  # Метод age — возвращает количество полных лет пациента
  def age
    today = Date.today
    result = today.year - @date_of_birth.year - 1

    if (today.month > @date_of_birth.month) ||
      (today.month == @date_of_birth.month &&
       today.day >= @date_of_birth.day)
      result += 1
    end

    return result
  end

  # Методы adult? — возвращает true, если пациент совершеннолетний или
  # false, если нет
  def adult?
    return age >= 18
  end

  def registration_address
    return @registration_address.full_address
  end
end

# Описание класса Address
class Address
  def initialize (territorial_entity, region, city, locality, street, building, flat)
    @territorial_entity = territorial_entity # субъект РФ
    @region = region # район
    @city = city # город
    @locality = locality # нас. пункт
    @street = street # улица
    @building = building # дом
    @flat = flat # квартира

    # Обратите внимание, что мы записали номер дома и квартиры как есть, не
    # переводя в числа, т.к. бывают дома с буквами (14к1) и даже квартиры с
    # буквами, например, 18а.
    #
    # Никто разработчику этого не скажет — должен сам подумать и решить (или
    # спросить)
  end


  def full_address
    # Нам надо выводить адрес вот в таком формате:
    #
    # ул. Сосновая, д. 15, кв. 1, пос. Лесное, Алексеевский р-он, Воронежская обл.
    #
    # Сначала улицу, потом дом, потом квартиру, потом населенный пункт, район и
    # регион РФ. Чтобы всё это собрать, заведем массив result и будем складывать
    # в него части для строки с адресом в нужном порядке. Если вдруг в какой-то
    # из переменной лежит nil или пустая строка, мы не будем добавлять её
    # в массив.
    result = []

    # Проверить, что в переменной лежит пустая строка, можно с помощью метода
    # `empty?`. Если в переменной nil, то метод to_s сделает из него пустую
    # строку.
    if !@street.to_s.empty?
      result << @street
    end

    if !@building.to_s.empty?
      result << "д. #{@building}"
    end

    if !@flat.to_s.empty?
     result << "кв. #{@flat}"
    end

    if !@city.to_s.empty?
      result << @city
    end

    if !@locality.to_s.empty?
      result << @locality
    end

    if !@region.to_s.empty?
      result << @region
    end

    if !@territorial_entity.to_s.empty?
      result << @territorial_entity
    end

    # Склеим все элементы массива в строку, разделяя их запятой с помощью метода
    # join, которому в качестве параметра передадим ", ". Полученную строку
    # вернем в качестве ответа метода.
    return result.join(", ")
  end
end
# ---

# Создаем экземпляр класса Patient и передаем ему все необходимые параметры: имя,
# отчество, фамилию и дату рождения

address = Address.new("Ленинградская обл.", "Бологовский р-он",
  "Бологое", nil,  "ул. Ленина", 3, 84)
vadik = Patient.new("Вадим", "Аркадьевич",
  "Венедиктов", "14.09.1984", address)

# Выводим всю информацию о пациенте, вызывая соответствующие методы у экземпляра
# класса Patient
puts "Пациент 1:"
puts vadik.full_name
puts "Возраст: #{vadik.age}"
puts "Совершеннолетний: #{vadik.adult?}"
puts "Адресс: #{vadik.registration_address}"
puts
