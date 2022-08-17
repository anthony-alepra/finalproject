class FeedbackController < ActionController::Base
    def feedback_form

        render("feedback_views/feedback_form.html.erb")
    end

    def feedback_form_submit

        render("feedback_views/feedback_form_submit.html.erb")
    end

end
