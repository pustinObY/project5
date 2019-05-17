$(function() {
  
  // Development site indicator
  let newDiv = $('<div/>')
    .css({
      'top' : '0',
      'left' : '0',
      'color' : '#000',
      'width' : '100%',
      'height' : '20px',
      'z-index' : '999999999',
      'position' : 'fixed',
      'font-size' : '9px',
      'text-align' : 'center',
      'line-height': '20px',
      'background' : 'rgba(255,255,0,0.75)',
    })
    .text('DEVELOPMENT MODE');
  
  let newDiv2 = $('<div/>')
    .css({
      'top' : '0',
			'right' : '10px',
			'height' : '20px',
			'cursor' : 'pointer',
			'position' : 'absolute'
    })
    .text('Close')
    .hover(
      function() {
        newDiv2.css({'text-decoration' : 'underline'});
      },
      function() {
        newDiv2.css({'text-decoration' : 'none'});
      }
    ).click(function() {
      newDiv.remove();
    });
  
  $('body').append(newDiv.append(newDiv2));
  
});