local Emails = {
    ["collect-zone"] = {
        subject = "I'm running low on scrap parts",
        body = "Go to %s and find some vehicles for me."
    },
    ["shop-cops"] = {
        subject = "The cops showed up at the shop",
        body = "Forget about the list and lay low until I find a new safe place."
    },
    ["collect-list"] = {
        subject = "List of wanted vehicles",
        body = "Here is the list of vehicles:\n\n%s (%s mins remaining)"
    },
    ["collect-resolved"] = {
        subject = "Vehicle collection fulfilled",
        body = "The collection of the %s has been fulfilled, you can take it off your list."
    },
    ["collect-next"] = {
        subject = "New Vehicle spotted",
        body = "A wanted vehicle has been spotted near %s, go take a look and bring it to me."
    },
}

function SendChopEmail(subject, ...)
    local email = Emails[subject]

    if email then
        TriggerEvent('phone:emailReceived', 'Chop Shop', email.subject, (email.body):format(...))
    end
end