class EventController < ActionController::Base
    

    # Submit application for playtest event functionality

    def event_application

        render("event_views/event_application.html.erb")
    end

    def create_event_application
        @event_application = EventApplication.new({
            email: params[:email],
            dev_name: params[:dev_name],
            game_name: params[:game_name],
            multiplayer: params[:multiplayer],
            game_description: params[:game_description],
            why_playtest: params[:why_playtest]
        })
        @event_application.save
        redirect_to("/event_application_submit")
    end

    def event_application_submit
        
        render("event_views/event_application_submit.html.erb")
    end


    # Register for a playtest event functionality

    def player_register_form

        render("event_views/player_register_form.html.erb")
    end

    def create_player_register_form
        @player_register_form = PlayerRegisterForm.new({
            email: params[:email],
            player_name: params[:player_name]
        })
        @player_register_form.save
        redirect_to("/player_register_form_submit")
    end

    def player_register_form_submit

        render("event_views/player_register_form_submit.html.erb")
    end


    # Schedule playtest functionality

    def schedule_event

        render("event_views/schedule_event.html.erb")
    end

    def create_scheduled_event
        date = Date.parse params[:date]
        time = Time.parse params[:time]
        datetime = DateTime.new(date.year, date.month, date.day, time.hour, time.min, 0)
        @event = Event.new({
            time: datetime
        })
        @event.save
        redirect_to("/schedule_event_confirmed")
    end

    def schedule_event_confirmed

        render("event_views/schedule_event_confirmed.html.erb")
    end
end
