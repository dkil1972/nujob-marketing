module ApplicationHelper
  def dummy_feedback
   feedbacks = [
    {
     content: "Engaging in the technology community is a big part of our strategy. Having NuJob ensures we never miss out on referrals and passive candidates introduced through our IT teams.",
      icon: "Client1.png",
      user: "Matthew Sagar",
      role: "HR Manager comparethemarket.com",
    } ,
    {
     content: "It's been a real eye opener to see how many potential candidates our IT teams actually know. Managing a talent pool has never been easier!",
      icon: "Client2.png",
      user: "Nicola Cottingham",
      role: "HR Recruiter comparethemarket.com"
    }
    ]
  end

  def featured_customer
    featured_customer = {
      content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      icon: "Client1.png",
      user: "Charlie Smith",
      role: "Lead Manager Google",
    }
  end

  def active_link (link,controller, action)
    class_name = ""
    case link
    when "home"
      if (controller == "home") and (action == "index")
        class_name = "active"
      end
    when "testimonials"
      if (controller == "home") and (action == "testimonials")
        class_name = "active"
      end
    when "tour"
      if (controller == "home") and (action == "tour")
        class_name = "active"
      end   
    when "pricing"
      if (controller == "home") and (action == "pricing")
        class_name = "active"
      end 
    when "blog"
      if (controller == "blogs")
        class_name = "active"
      end   
    when "contact"
      if (controller == "home") and (action == "contact")
        class_name = "active"
      end
    end
  end
end
