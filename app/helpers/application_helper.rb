module ApplicationHelper
  # Creates a submit button with given name with a cancel link
  # Accepts two arguments: Form object and the cancel link name
  def submit_or_cancel(form, name=t('general.cancel'))
    form.submit + " " + t('general.or') + " " + link_to(name, 'javascript:history.go(-1);', :class => 'cancel')
  end
  
  def language_selector
    if I18n.locale == :en
      link_to "PT", url_for(:locale => 'pt-br')
      link_to "BG", url_for(:locale => 'bg')
    elsif I18n.locale == :bg
      link_to "PT", url_for(:locale => 'pt-br')
      link_to "EN", url_for(:locale => 'en')
    else
      link_to "EN", url_for(:locale => 'en')
      link_to "BG", url_for(:locale => 'bg')
    end
  end
end
