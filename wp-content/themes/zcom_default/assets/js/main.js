$(function() {

  /**
   * Navigation Toggle Button
   */
  if ($('.navigation__toggle').length) {
    $('.navigation__toggle').on('click', function() {
      let sibling = $(this).siblings('.navigation__list');
      
      if (sibling.is(':hidden')) {
        sibling.css('display', 'block');
      } else {
        sibling.removeAttr('style');
      }
    });
  }
  
  /**
   * Form Validator
   */
  if ($.validator) {
    let form = $('#form-id');
    let url = form.attr('action');
    form.validate({
      errorPlacement: function() {},
      rules: {
        emailaddress: {email: true}
      },

      submitHandler: function(f) {
        let $form = $(f);
        let submitButton = $form.find('button[type="submit"]');
        let tmp = submitButton.text();
        
        submitButton.text('Sending Form...').prop('disabled', true);
        
        $.post(url, $form.serialize(), function() {
          form.find('input, textarea').val('');
          submitButton.text(tmp).prop('disabled', false);
          alert('Form successfully submitted!');
        });
        
        return false;
      }
    });
  }

});