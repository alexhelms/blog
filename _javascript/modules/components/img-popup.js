/**
 * Set up image popup
 *
 * See: https://github.com/dimsemenov/Magnific-Popup
 */

export function imgPopup() {
  if ($('.popup') <= 0) {
    return;
  }

  $('.popup').magnificPopup({
    type: 'image',
    closeOnContentClick: true,
    showCloseBtn: false,
    zoom: {
      enabled: true,
      duration: 100,
      easing: 'ease-in-out'
    }
  });
}
