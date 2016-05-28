alias Ectoing.Repo
alias Ectoing.User

%User{id: user_id_1} = user_1 = Repo.insert!(%User{firstname: "Thomas", surname: "Punt", username: "tpunt"})
%User{id: user_id_2} = user_2 = Repo.insert!(%User{firstname: "Liam", surname: "Mann", username: "lmann"})
%User{id: user_id_3} = user_3 = Repo.insert!(%User{firstname: "John", surname: "Doe", username: "jDOE"})
%User{id: user_id_4} = user_4 = Repo.insert!(%User{firstname: "Jane", surname: "Doe", username: "jane_doe"})
%User{id: user_id_5} = user_5 = Repo.insert!(%User{firstname: "Bruno", surname: "Škvorc", username: "swader"})

Repo.insert!(Ecto.build_assoc(user_1, :friends_with, friend: user_2, friend_id: user_id_2, friend_rating: 3))
Repo.insert!(Ecto.build_assoc(user_1, :friends_with, friend: user_5, friend_id: user_id_5, friend_rating: 4))
Repo.insert!(Ecto.build_assoc(user_2, :friends_with, friend: user_1, friend_id: user_id_1, friend_rating: 2))
Repo.insert!(Ecto.build_assoc(user_3, :friends_with, friend: user_4, friend_id: user_id_4, friend_rating: 3))
Repo.insert!(Ecto.build_assoc(user_4, :friends_with, friend: user_3, friend_id: user_id_3, friend_rating: 4))
Repo.insert!(Ecto.build_assoc(user_5, :friends_with, friend: user_1, friend_id: user_id_1, friend_rating: 2))

Repo.insert!(Ecto.build_assoc(user_1, :messages, message_body: "Message 1"))
Repo.insert!(Ecto.build_assoc(user_1, :messages, message_body: "Message 2"))
Repo.insert!(Ecto.build_assoc(user_1, :messages, message_body: "Message 3"))
Repo.insert!(Ecto.build_assoc(user_2, :messages, message_body: "Message 4"))
Repo.insert!(Ecto.build_assoc(user_4, :messages, message_body: "Message 5"))
Repo.insert!(Ecto.build_assoc(user_4, :messages, message_body: "Message 6"))
Repo.insert!(Ecto.build_assoc(user_5, :messages, message_body: "Message 7"))
