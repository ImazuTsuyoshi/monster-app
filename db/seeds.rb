# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "今津剛",
  email: "sample@email.com",
  age: "29歳",
  gender: "男",
  pho: "09011112222",
  residence: "愛知県名古屋市◯◯区◯◯◯ ◯-◯-◯",
  password: "password",
  password_confirmation: "password",
  admin: true,
  history: "10年",
  self_introduction: "小学校３年から高校の途中まで野球をやってました。ずっとピッチャーやっていて肩を壊してやめてしまいました。希望のボジションはファーストで希望の背番号は5です。よろしくお願いします。"
  )

  User.create!(name: "sampleuser",
    email: "sample1@email.com",
    age: "25歳",
    gender: "女",
    pho: "09022223333",
    residence: "愛知県名古屋市◯◯区◯◯◯ ◯-◯-◯",
    password: "password",
    password_confirmation: "password",
    history: "6年",
    self_introduction: "未経験ですが野球を見るのが好きでやってみたく応募させていただきました。希望のボジションはライトで希望の背番号は9です。よろしくお願いします。"
    )  

    User.create!(name: "sampleuserA",
      email: "sample2@email.com",
      age: "26歳",
      gender: "女",
      pho: "09033334444",
      residence: "愛知県名古屋市◯◯区◯◯◯ ◯-◯-◯",
      password: "password",
      password_confirmation: "password",
      history: "8年",
      self_introduction: "よろしくお願いします。"
      )  
      
      User.create!(name: "samplB",
        email: "sample3@email.com",
        age: "27歳",
        gender: "男",
        pho: "09055556666",
        residence: "愛知県名古屋市◯◯区◯◯◯ ◯-◯-◯",
        password: "password",
        password_confirmation: "password",
        history: "9年",
        self_introduction: "よろしくお願いします。"
        )    

        User.create!(name: "samplC",
          email: "sample4@email.com",
          age: "28歳",
          gender: "男",
          pho: "09077778888",
          residence: "愛知県名古屋市◯◯区◯◯◯ ◯-◯-◯",
          password: "password",
          password_confirmation: "password",
          history: "6年",
          self_introduction: "よろしくお願いします。"
          )  
          
          User.create!(name: "samplD",
            email: "sample5@email.com",
            age: "29歳",
            gender: "女",
            pho: "0809991111",
            residence: "愛知県名古屋市◯◯区◯◯◯ ◯-◯-◯",
            password: "password",
            password_confirmation: "password",
            history: "8年",
            self_introduction: "よろしくお願いします。"
            )  

            User.create!(name: "samplE",
              email: "sample6@email.com",
              age: "30歳",
              gender: "男",
              pho: "08011112222",
              residence: "愛知県名古屋市◯◯区◯◯◯ ◯-◯-◯",
              password: "password",
              password_confirmation: "password",
              history: "7年",
              self_introduction: "よろしくお願いします。"
              )  

              User.create!(name: "samplF",
                email: "sample7@email.com",
                age: "30歳",
                gender: "男",
                pho: "08022223333",
                residence: "愛知県名古屋市◯◯区◯◯◯ ◯-◯-◯",
                password: "password",
                password_confirmation: "password",
                history: "6年",
                self_introduction: "よろしくお願いします。"
                )  

                User.create!(name: "samplG",
                  email: "sample8@email.com",
                  age: "31歳",
                  gender: "男",
                  pho: "08033334444",
                  residence: "愛知県名古屋市◯◯区◯◯◯ ◯-◯-◯",
                  password: "password",
                  password_confirmation: "password",
                  history: "7年",
                  self_introduction: "よろしくお願いします。"
                  )  

                  User.create!(name: "samplH",
                    email: "sample9@email.com",
                    age: "32歳",
                    gender: "男",
                    pho: "08055556666",
                    residence: "愛知県名古屋市◯◯区◯◯◯ ◯-◯-◯",
                    password: "password",
                    password_confirmation: "password",
                    history: "8年",
                    self_introduction: "よろしくお願いします。"
                    )  

                    User.create!(name: "samplI",
                      email: "sample10@email.com",
                      age: "33歳",
                      gender: "男",
                      pho: "08077778888",
                      residence: "愛知県名古屋市◯◯区◯◯◯ ◯-◯-◯",
                      password: "password",
                      password_confirmation: "password",
                      history: "9年",
                      self_introduction: "よろしくお願いします。"
                      ) 
                      
                      User.create!(name: "samplJ",
                        email: "sample11@email.com",
                        age: "34歳",
                        gender: "男",
                        pho: "08099991111",
                        residence: "愛知県名古屋市◯◯区◯◯◯ ◯-◯-◯",
                        password: "password",
                        password_confirmation: "password",
                        history: "10年",
                        self_introduction: "よろしくお願いします。"
                        )   



Tag.create([
  { name: '練習の日程' },
  { name: '練習試合の日程' },
  { name: '大会試合の日程' },
  { name: '試合結果' },
  { name: 'お知らせ' }
])
