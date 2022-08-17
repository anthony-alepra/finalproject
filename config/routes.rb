Rails.application.routes.draw do
    get "/" => "application#home"

    get "/event_application" => "event#event_application"
    post "/event_application" => "event#create_event_application"
    get "/event_application_submit" => "event#event_application_submit"

    get "/player_register_form" => "event#player_register_form"
    post "/player_register_form" => "event#create_player_register_form"
    get "/player_register_form_submit" => "event#player_register_form_submit"

    get "/schedule_event" => "event#schedule_event"
    post "/schedule_event" => "event#create_scheduled_event"
    get "/schedule_event_confirmed" => "event#schedule_event_confirmed"

    get "/feedback_form" => "feedback#feedback_form"
    post "/feedback_form_submit" => "feedback#feedback_form_submit"

end
